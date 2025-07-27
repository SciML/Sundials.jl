# SUNContext management for Sundials 6.0+

# Create a default SUNContext
function create_context()
    ctx_ref = Ref{SUNContext}()
    ret = SUNContext_Create(C_NULL, ctx_ref)
    if ret != 0
        error("Failed to create SUNContext")
    end
    return ctx_ref[]
end

# Free a SUNContext
function free_context(ctx::SUNContext)
    ret = SUNContext_Free(ctx)
    if ret != 0
        error("Failed to free SUNContext")
    end
end

# Global context for simple API
const DEFAULT_CONTEXT = Ref{SUNContext}()

function get_default_context()
    if !isassigned(DEFAULT_CONTEXT)
        DEFAULT_CONTEXT[] = create_context()
    end
    return DEFAULT_CONTEXT[]
end

# Clean up on module unload
function __init__()
    # Initialize default context when module loads
    get_default_context()
end