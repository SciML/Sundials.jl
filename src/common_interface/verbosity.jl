function null_error_handler(error_code::Cint, mod::Char, func::Char, eh_data::Ptr{Cvoid})
    return nothing
end

# Normalize the verbose parameter to DEVerbosity
_process_verbose_param(v::SciMLLogging.AbstractVerbosityPreset) = DEVerbosity(v)
_process_verbose_param(v::Bool) = v ? DEVerbosity() : DEVerbosity(SciMLLogging.None())
_process_verbose_param(v::DEVerbosity) = v
