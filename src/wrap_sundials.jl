# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Sundials using the headers.

# Find all headers
incpath = normpath(joinpath(dirname(@__FILE__), "..", "deps", "usr", "include"))
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
            # create wrapers for all arguments that need wrapping
            args_wrap_exprs = map(drop(expr.args[1].args, 1)) do expr
                # process each argument
                # return a tuple:
                #   1) high-level wrapper arg name expr
                #   2) expr for local var definition, nothing if not required
                #   3) expr for low-level wrapper call
                # if 1)==3), then no wrapping is required
                arg_name_expr = expr.args[1]
                arg_type_expr = expr.args[2]
                if arg_type_expr == :N_Vector
                    # first convert argument to NVector() and store in local var,
                    # this guarantees that the wrapper and associated Sundials object (e.g. N_Vector)
                    # is not removed by GC
                    return (arg_name_expr,
                            Expr(:call, :convert, :NVector, arg_name_expr), # convert arg to NVector to store in a local var
                            Expr(:call, :convert, arg_type_expr, Symbol(string("__", arg_name_expr)))) # convert NVector to N_Vector
                elseif arg_type_expr == :Clong || arg_type_expr == :Cint ||
                    ismatch(r"MemPtr$", string(arg_type_expr))
                    # convert(XXXMemPtr, mem), no local var required
                    return (arg_name_expr, nothing,
                            Expr(:call, :convert, arg_type_expr, arg_name_expr))
                elseif isa(arg_type_expr, Expr) && arg_type_expr.head == :curly &&
                    arg_type_expr.args[1] == :Ptr && arg_type_expr.args[2] != :FILE
                    # convert julia arrays to pointer, no local var required
                    # FIXME sometimes these arguments are not really arrays, but just a pointer to a var to be assigned
                    # by the function call. Does that make sense to detect such cases and assume that input arg is a reference to Julia var?
                    return (arg_name_expr, nothing,
                            Expr(:call, :pointer, arg_name_expr))
                elseif haskey(FnTypeSignatures, arg_type_expr) # wrap Julia function to C function using a defined signature
                    return (arg_name_expr, nothing,
                            Expr(:call, Symbol(string(arg_type_expr, "_wrapper")), arg_name_expr))
                else # any other case, no argument wrapping
                    return (arg_name_expr, nothing, arg_name_expr)
                end
            end
            # check which arguments are wrapped
            if any(map(arg_exprs -> arg_exprs[1] != arg_exprs[3], args_wrap_exprs))
                # mangle the name of the low-level wrapper to avoid recursion
                lowlevel_func_name = string("__", func_name)
                expr.args[1].args[1] = Symbol(lowlevel_func_name)

                # higher-level wrapper function
                wrapper_func_expr = Expr(:function,
                    # function declaration with argument types stripped, so it would accept any type
                    Expr(:call, Symbol(func_name), map(arg_exprs -> arg_exprs[1], args_wrap_exprs)...),
                    Expr(:block,
                    # local var defs
                    map(filter(arg_exprs -> arg_exprs[2] !== nothing, args_wrap_exprs)) do arg_exprs
                        Expr(:(=), Symbol("__", arg_exprs[1]), arg_exprs[2])
                    end...,
                    # low-level function call with Julia types converted to low-level arguments
                    Expr(:call, Symbol(lowlevel_func_name),
                         map(arg_exprs -> arg_exprs[3], args_wrap_exprs)...)
                    )
                )
                # write down both low-level and higher level wrappers
                return Any[expr, wrapper_func_expr]
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
