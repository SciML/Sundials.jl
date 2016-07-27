# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Sundials using the headers.

# Find all headers
incpath = joinpath(dirname(@__FILE__), "..", "deps", "usr", "include")
if !isdir(incpath)
  error("Run Pkg.build(\"Sundials\") before trying to wrap C headers.")
end

wdir = joinpath(dirname(@__FILE__), "..", "new")
mkpath(wdir)
cd(wdir)

sundials_names = ["nvector", "sundials", "cvode", "cvodes", "ida", "idas", "kinsol"]
if isdir(joinpath(incpath, "arkode"))
  push!(sundials_names, "arkode")
end
headers = ASCIIString[]
for name in sundials_names
    path = joinpath(incpath, name)
    append!(headers, map(x->joinpath(path, x),
            sort!(convert(Vector{ASCIIString}, readdir(path)))))
end
# @show headers


## Do wrapping using Clang.jl
ENV["JULIAHOME"] = "/Users/jgoldfar/Public/julia/usr/"

using Clang.wrap_c

if (!haskey(ENV, "JULIAHOME"))
  error("Please set JULIAHOME variable to the root of your julia install")
end

clang_includes = map(x->joinpath(ENV["JULIAHOME"], x), [
  "deps/llvm-3.2/build/Release/lib/clang/3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/build/include/",
  "deps/llvm-3.2/include/"
  ])

# check_use_header(path) = true
# Callback to test if a header should actually be wrapped (for exclusion)
function wrap_header(top_hdr::ASCIIString, cursor_header::ASCIIString)
    !ismatch(r"(_parallel|_impl)\.h$", cursor_header) &&  # don't wrap parallel and implementation definitions
    (top_hdr == cursor_header) # don't wrap if header is included from the other header (e.g. nvector in cvode or cvode_direct from cvode_band)
end

function wrap_cursor(name::ASCIIString, cursor)
    if typeof(cursor) == Clang.cindex.FunctionDecl
        # only wrap API functions
        return ismatch(r"^(CV|KIN|IDA|N_V)", name)
    else
        # skip problematic definitions
        return !ismatch(r"^(ABS|SQRT|EXP)$", name)
    end
end

function julia_file(header::AbstractString)
    src_name = basename(dirname(header))
    if src_name == "sundials"
        src_name = "libsundials" # avoid having both Sundials.jl and sundials.jl
    end
    return string(src_name, ".jl")
end
function library_file(header::AbstractString)
    header_name = basename(header)
    if startswith(header_name, "nvector")
        return "libsundials_nvecserial"
    else
        return string("libsundials_", basename(dirname(header)))
    end
end

clang_extraargs = [
"-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS",
"-v"]
context = wrap_c.init(
common_file="types_and_consts.jl",
clang_args = clang_extraargs, clang_diagnostics = true,
clang_includes = [clang_includes; incpath],
header_outputfile = julia_file,
header_library = library_file,
header_wrapped=wrap_header,
cursor_wrapped=wrap_cursor)
context.headers = headers

# 1st arg name to wrapped arg type map
const arg1_name2type = Dict(
    :cvode_mem => :(CVODEMemPtr),
    :kinmem => :(KINMemPtr),
    :kinmemm => :(KINMemPtr), # Sundials typo?
    :ida_mem => :(IDAMemPtr),
    :idaa_mem => :(IDAMemPtr), # Sundials typo?
    :idaadj_mem => :(IDAMemPtr), # Sundials typo?
)

const ctor_return_type = Dict(
    "CVodeCreate" => :(CVODEMemPtr),
    "IDACreate" => :(IDAMemPtr),
    "KINCreate" => :(KINMemPtr)
)

# signatures for C function pointer types
const FnTypeSignatures = Dict(
    :CVRhsFn => (:Cint, :((realtype, N_Vector, N_Vector, Ptr{Void}))),
    :CVRootFn => (:Cint, :((realtype, N_Vector, Ptr{realtype}, Ptr{Void}))),
    :IDAResFn => (:Cint, :((realtype, N_Vector, N_Vector, N_Vector, Ptr{Void}))),
    :IDARootFn => (:Cint, :((realtype, N_Vector, N_Vector, Ptr{realtype}, Ptr{Void}))),
    :KINSysFn => (:Cint, :((N_Vector, N_Vector, Ptr{Void}))),
)

typeify_sundials_pointers(notexpr) = Any[notexpr]

function typeify_sundials_pointers(expr::Expr)
    if expr.head == :function &&
        expr.args[1].head == :call
        func_name = string(expr.args[1].args[1])
        convert_required = false
        if ismatch(r"^(CV|KIN|IDA|N_V)", func_name)
            if ismatch(r"Create$", func_name)
                # create functions return typed pointers
                @assert expr.args[2].args[1].args[2] == :(Ptr{Void})
                expr.args[2].args[1].args[2] = ctor_return_type[func_name]
            elseif length(expr.args[1].args) > 1
                arg1_name = expr.args[1].args[2].args[1]
                arg1_type = expr.args[1].args[2].args[2]
                if arg1_type == :(Ptr{Void}) || arg1_type == :(Ptr{Ptr{Void}})
                    # also check in the ccall list of arg types
                    @assert expr.args[2].args[1].args[3].args[1] == arg1_type
                    arg1_newtype = arg1_name2type[arg1_name]
                    if arg1_type == :(Ptr{Ptr{Void}})
                        # adjust for void** type (for CVodeFree()-like funcs)
                        arg1_newtype = Expr(:curly, :Ref, arg1_newtype)
                    end
                    expr.args[1].args[2].args[2] = arg1_newtype
                    expr.args[2].args[1].args[3].args[1] = arg1_newtype
                    convert_required = true
                end
            end
            if ismatch(r"UserDataB?$", func_name)
                # replace Ptr{Void} with Any to allow passing Julia objects through user data
                for (i, arg_expr) in enumerate(expr.args[1].args)
                    if i > 1 && ismatch(r"^user_dataB?$", string(arg_expr.args[1]))
                        @assert arg_expr.head == :(::) && arg_expr.args[2] == :(Ptr{Void})
                        expr.args[1].args[i].args[2] = :(Any)
                        # replace in ccall list
                        @assert expr.args[2].args[1].args[3].args[i-1] == :(Ptr{Void})
                        expr.args[2].args[1].args[3].args[i-1] = :(Any)
                        break
                    end
                end
            end
            # generate a higher-level wrapper that converts 1st arg to XXXMemPtr
            # and all other args from Julia objects to low-level C wrappers (e.g. NVector to N_Vector)
            lowlevel_func_name = string("__", func_name)
            wrap_required = false
            wrap_expr = Expr(:(=),
                # function declaration with argument types stripped
                Expr(:call, Symbol(func_name), map(expr -> expr.args[1], drop(expr.args[1].args, 1))...),
                # low-level function call with Julia types converted to low-level arguments
                Expr(:call, Symbol(lowlevel_func_name), map(drop(expr.args[1].args, 1)) do expr
                    # process each argument
                    wrap_arg = true # indicates whether the argument wrapper is required
                    if expr.args[2] == :N_Vector || expr.args[2] == :Clong ||
                        ismatch(r"MemPtr$", string(expr.args[2]))
                        # convert(XXXMemPtr, mem)
                        expr = Expr(:call, :convert, expr.args[2], expr.args[1])
                    elseif isa(expr.args[2], Expr) && expr.args[2].head == :curly &&
                        expr.args[2].args[1] == :Ptr && expr.args[2].args[2] != :FILE
                        # convert julia arrays to pointer
                        # FIXME sometimes these arguments are not really arrays, but just a pointer to a var to be assigned
                        # by the function call. Does that make sense to detect such cases and assume that input arg is a reference to Julia var?
                        expr = Expr(:call, :pointer, expr.args[1])
                    elseif haskey(FnTypeSignatures, expr.args[2]) # wrap Julia function to C function using a defined signature
                        expr = Expr(:call, Symbol(string(string(expr.args[2]), "_wrapper")), expr.args[1])
                    else # any other case, no argument wrapping
                        expr = expr.args[1]
                        wrap_arg = false
                    end
                    wrap_required = wrap_required || wrap_arg
                    expr
                end ...)
            )
            if wrap_required
                # mangle the name of the original wrapper to avoid recursion
                expr.args[1].args[1] = Symbol(lowlevel_func_name)
                # write down both low-level and higher level wrappers
                return Any[expr, wrap_expr]
            else
                return Any[expr]
            end
        end
    elseif expr.head == :typealias && haskey(FnTypeSignatures, expr.args[1])
        # C functional type, generate the wrapper from Julia to C function
        # dummy wrapper that accepts pointer
        fn_typename = expr.args[1]
        fn_rettype, fn_argtypes = FnTypeSignatures[fn_typename]
        wrapper_name = Symbol(string(string(fn_typename), "_wrapper"))
        c_wrapper_def = Expr(:(=),
                Expr(:call, wrapper_name, Expr(:(::), :fp, fn_typename)), :fp)
        jl_wrapper_def = Expr(:(=),
            Expr(:call, wrapper_name, :f),
            # function declaration with argument types stripped
            Expr(:call, :cfunction, :f, fn_rettype, fn_argtypes))
        return Any[expr, c_wrapper_def, jl_wrapper_def]
    elseif expr.head == :const && expr.args[1].head == :(=) &&
           isa(expr.args[1].args[2], Int)
        # fix integer constants should be Cint
        expr.args[1].args[2] = Expr(:call, :Cint, expr.args[1].args[2])
    end
    return Any[expr]
end

context.rewriter = function(exprs)
    mod_exprs = sizehint!(Vector{Any}(), length(exprs))
    for expr in exprs
        append!(mod_exprs, typeify_sundials_pointers(expr))
    end
    mod_exprs
end

run(context)
