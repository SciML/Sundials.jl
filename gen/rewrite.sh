cat libsundials_api.jl | \
    perl -pe 's/ARKRhsFn_wrapper//g' | \
    perl -pe 's/CVRhsFn_wrapper//g' | \
    perl -pe 's/CVRootFn_wrapper//g' | \
    perl -pe 's/IDAResFn_wrapper//g' | \
    perl -pe 's/IDARootFn_wrapper//g' | \
    perl -pe 's/KINSysFn_wrapper//g' | \
    perl -pe 's/ARKRhsFn_wrapper//g' | \
    perl -pe 's/convert\(N_Vector, (.+)\)/$1/g' \
    > libsundials_api_rewrite.jl
