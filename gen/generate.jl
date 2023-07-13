using Clang.Generators
using Sundials_jll
using MLStyle
using Pkg

# 1st arg name to wrapped arg type map
const arg1_name2type = Dict(:arkode_mem => :(ARKStepMemPtr),
    :cvode_mem => :(CVODEMemPtr),
    :cv_mem => :(CVODEMemPtr),
    :kinmem => :(KINMemPtr),
    :kinmemm => :(KINMemPtr), # Sundials typo?
    :ida_mem => :(IDAMemPtr),
    :idaa_mem => :(IDAMemPtr), # Sundials typo?
    :idaadj_mem => :(IDAMemPtr))

const linear_solvers_and_matrices = [
    # Linear Solvers
    "band",
    "dense",
    "klu",
    "lapackend",
    "lapackdense",
    "pcg",
    "spbcgs",
    "spfgmr",
    "spgmr",
    "sptfqmr",
    # Matrices
    "sparse",
    # Non linear solvers
    "fixedpoint",
    "newton"]

# substitute Ptr{Void} with the typed pointer
const ctor_return_type = Dict("ARKCreate" => :(ARKStepMemPtr),
    "ARKStepCreate" => :(ARKStepMemPtr),
    "ERKStepCreate" => :(ERKStepMemPtr),
    "MRIStepCreate" => :(MRIStepMemPtr),
    "CVodeCreate" => :(CVODEMemPtr),
    "IDACreate" => :(IDAMemPtr),
    "KINCreate" => :(KINMemPtr))
# signatures for C function pointer types
const FnTypeSignatures = Dict(:ARKRhsFn => (:Cint,
        :((realtype, N_Vector, N_Vector, Ptr{Cvoid}))),
    :CVRhsFn => (:Cint,
        :((realtype, N_Vector, N_Vector, Ptr{Cvoid}))),
    :CVRootFn => (:Cint,
        :((realtype, N_Vector, Ptr{realtype},
            Ptr{Cvoid}))),
    :IDAResFn => (:Cint,
        :((realtype, N_Vector, N_Vector, N_Vector,
            Ptr{Cvoid}))),
    :IDARootFn => (:Cint,
        :((realtype, N_Vector, N_Vector, Ptr{realtype},
            Ptr{Cvoid}))),
    :KINSysFn => (:Cint, :((N_Vector, N_Vector, Ptr{Cvoid}))))

function wrap_sundials_api(expr::Expr)
    if expr.head == :function &&
       expr.args[1].head == :call
        func_name = string(expr.args[1].args[1])
        convert_required = false
        if occursin(r"^(ARK|ERK|MRI|CV|KIN|IDA|SUN|N_V)", func_name)
            # @show func_name
            if occursin(r"Create$", func_name) && !occursin(r"Butcher", func_name)
                # create functions return typed pointers
                @assert expr.args[2].args[1].args[3] == :(Ptr{Cvoid})
                expr.args[2].args[1].args[3] = ctor_return_type[func_name]
            elseif length(expr.args[1].args) > 1
                arg1_type = expr.args[2].args[1].args[4].args[1]
                if arg1_type == :(Ptr{Cvoid}) || arg1_type == :(Ptr{Ptr{Cvoid}})
                    arg1_name = expr.args[1].args[2]
                    arg1_newtype = arg1_name2type[arg1_name]
                    # seperate ARKStepMemPtr from ERK* and MRI*
                    if arg1_newtype == :ARKStepMemPtr
                        arg1_newtype = Symbol(func_name[1:3] * "StepMemPtr")
                    end
                    if arg1_type == :(Ptr{Ptr{Cvoid}})
                        # adjust for void** type (for CVodeFree()-like funcs)
                        arg1_newtype = Expr(:curly, :Ref, arg1_newtype)
                    end
                    expr.args[2].args[1].args[4].args[1] = arg1_newtype
                    convert_required = true
                end
            end
            if occursin(r"UserDataB?$", func_name)
                # replace Ptr{Void} with Any to allow passing Julia objects through user data
                for (i, arg_expr) in enumerate(expr.args[2].args[1].args)
                    if !(typeof(arg_expr) <: Symbol) &&
                       arg_expr.args[1] in values(ctor_return_type)
                        if arg_expr.args[2] == :(Ptr{Cvoid})
                            arg_expr.args[2] = Any
                        elseif arg_expr.args[3] == :(Ptr{Cvoid})
                            arg_expr.args[3] = Any
                        end
                    end
                end
            end
            if !(typeof(expr) <: Symbol) && length(expr.args) > 1 &&
               (expr.args[2].args[1].args[2].args[2] == :libsundials_sunlinsol ||
                expr.args[2].args[1].args[2].args[2] == :libsundials_sunmatrix ||
                expr.args[2].args[1].args[2].args[2] == :libsundials_sunnonlinsol)
                if func_name[1:6] == "SUNMAT"
                    expr.args[2].args[1].args[2].args[2] = Symbol(string(expr.args[2].args[1].args[2].args[2]) *
                                                                  lowercase(split(func_name,
                        "_")[end]))
                else
                    name_i = findfirst(lsmn -> occursin(lsmn, lowercase(func_name)),
                        linear_solvers_and_matrices)

                    @assert name_i > 0
                    name = linear_solvers_and_matrices[name_i]
                    expr.args[2].args[1].args[2].args[2] = Symbol(string(expr.args[2].args[1].args[2].args[2]) *
                                                                  name)
                end
            end
            # generate a higher-level wrapper that converts 1st arg to XXXMemPtr
            # and all other args from Julia objects to low-level C wrappers (e.g. NVector to N_Vector)
            # create wrapers for all arguments that need wrapping
            args_wrap_exprs = map(Base.Iterators.drop(expr.args[1].args, 1)) do expr
                # process each argument
                # return a tuple:
                #   1) high-level wrapper arg name expr
                #   2) expr for local var definition, nothing if not required
                #   3) expr for low-level wrapper call
                # if 1)==3), then no wrapping is required
                if typeof(expr) <: Symbol
                    arg_name_expr = expr
                    arg_type_expr = Any
                else
                    arg_name_expr = expr.args[1]
                    arg_type_expr = expr.args[2]
                end
                if arg_type_expr == :N_Vector
                    # TODO replace with use of cconvert / unsafe_convert
                    # The code and comment below is incorrect and leads to memory errors with Julia >= 1.8,
                    # as storing in a local variable DOES NOT protect against garbage collection.
                    # Current workaround is to edit the generated files and apply a fix.
                    #
                    # Incorrect comment: 'first convert argument to NVector() and store in local var,
                    #     this guarantees that the wrapper and associated Sundials object (e.g. N_Vector)
                    #     is not removed by GC'
                    return (arg_name_expr,
                        Expr(:call, :convert, :NVector, arg_name_expr), # convert arg to NVector to store in a local var
                        Expr(:call, :convert, arg_type_expr,
                            Symbol(string("__", arg_name_expr)))) # convert NVector to N_Vector
                elseif arg_type_expr == :Clong || arg_type_expr == :Cint ||
                       occursin(r"MemPtr$", string(arg_type_expr))
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
                        Expr(:call, Symbol(string(arg_type_expr, "_wrapper")),
                            arg_name_expr))
                else # any other case, no argument wrapping
                    return (arg_name_expr, nothing, arg_name_expr)
                end
            end
            # check which arguments are wrapped
            if any(map(arg_exprs -> arg_exprs[1] != arg_exprs[3], args_wrap_exprs))
                # mangle the name of the low-level wrapper to avoid recursion
                lowlevel_func_name = string(func_name)
                expr.args[1].args[1] = Symbol(lowlevel_func_name)

                # higher-level wrapper function
                wrapper_func_expr = Expr(:function,
                    # function declaration with argument types stripped, so it would accept any type
                    Expr(:call, Symbol(func_name),
                        map(arg_exprs -> arg_exprs[1],
                            args_wrap_exprs)...),
                    Expr(:block,
                        # local var defs
                        map(filter(arg_exprs -> arg_exprs[2] !==
                                                nothing,
                            args_wrap_exprs)) do arg_exprs
                            Expr(:(=), Symbol("__", arg_exprs[1]),
                                arg_exprs[2])
                        end...,
                        # low-level function call with Julia types converted to low-level arguments
                        Expr(:call, Symbol(lowlevel_func_name),
                            map(arg_exprs -> arg_exprs[3],
                                args_wrap_exprs)...)))
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

function rewrite(ex)
    ex = @match ex begin
        :(const $name = SUNDIALS_F77_FUNC($arg1, $arg2)) => :(const $name = nothing)
        # Expr(:macro, :($name()), Expr(:macrocall, Symbol("@SUNDIALS_F77_FUNC"), nothing, arg1, arg2))
        :(const $sun_name = $klu_name) &&
        if startswith(string(sun_name), "sun_klu_") && startswith(string(klu_name), "klu_")
        end => :(const $sun_name = nothing) # skip
        _ => ex
    end
    wrap_sundials_api(ex)
end

cd(@__DIR__)

include_dir = joinpath(Sundials_jll.artifact_dir, "include") |> normpath

artifact_toml = joinpath(dirname(pathof(Sundials_jll.SuiteSparse_jll)), "..",
    "StdlibArtifacts.toml")
suitesparse_dir = Pkg.Artifacts.ensure_artifact_installed("SuiteSparse", artifact_toml)
suitesparse_include_sir = joinpath(suitesparse_dir, "include")

# wrapper generator options
options = load_options(joinpath(@__DIR__, "generate.toml"))

# add compiler flags, e.g. "-DXXXXXXXXX"
args = get_default_args()
push!(args, "-I$include_dir", "-isystem$suitesparse_include_sir")

library_names = Dict(raw"sundials[\\/].+" => "libsundials_sundials",
    raw"sunnonlinsol[\\/].+" => "libsundials_sunnonlinsol",
    raw"sunmatrix[\\/].+" => "libsundials_sunmatrix",
    raw"kinsol[\\/].+" => "libsundials_kinsol",
    raw"ida[\\/].+" => "libsundials_idas",
    raw"cvodes[\\/].+" => "libsundials_cvodes",
    raw"sunlinsol[\\/].+$(?<!lapackband\.h)(?<!lapackdense\.h)" => "libsundials_sunlinsol",
    raw"cvode[\\/].+" => "libsundials_cvodes",
    raw"idas[\\/].+" => "libsundials_idas",
    raw"arkode[\\/].+" => "libsundials_arkode",
    raw"nvector[\\/].+" => "libsundials_nvecserial",
    raw"lapackband\.h" => "libsundials_sunlinsollapackband",
    raw"lapackdense\.h" => "libsundials_sunlinsollapackdense")
headers = String[]
for lib in readdir(include_dir)
    header_dir = joinpath(include_dir, lib)
    append!(headers,
        joinpath(header_dir, header)
        for header in readdir(header_dir) if endswith(header, ".h"))
end
options["general"]["library_names"] = library_names

ctx = create_context(headers, args, options)

# run generator
build!(ctx, BUILDSTAGE_NO_PRINTING)
for n in ctx.dag.nodes
    copy!(n.exprs, reduce(vcat, rewrite.(n.exprs); init = []))
end
build!(ctx, BUILDSTAGE_PRINTING_ONLY)
