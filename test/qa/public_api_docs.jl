using Sundials, Test

function _strip_comment(line)
    io = IOBuffer()
    in_string = false
    quotechar = '\0'
    escaped = false

    for char in line
        if escaped
            print(io, char)
            escaped = false
        elseif char == '\\'
            print(io, char)
            escaped = true
        elseif in_string
            print(io, char)
            char == quotechar && (in_string = false)
        elseif char == '"' || char == '\''
            print(io, char)
            in_string = true
            quotechar = char
        elseif char == '#'
            break
        else
            print(io, char)
        end
    end

    return String(take!(io))
end

function _public_names_from_statement(statement)
    normalized = replace(statement, r"^\s*(export|public|@public|SciMLPublic\.@public)\s+" => "")
    normalized = replace(normalized, r"\b(export|public)\b" => "")
    normalized = replace(normalized, "SciMLPublic.@public" => "")
    normalized = replace(normalized, "@public" => "")
    normalized = replace(normalized, r"Expr\s*\(\s*:public\s*,?" => "")
    normalized = replace(normalized, r"eval\s*\(" => "")
    normalized = replace(normalized, r"Symbol\s*\(\s*\"(@?[A-Za-z_][A-Za-z0-9_!]*)\"\s*\)" => s"\1")
    normalized = replace(normalized, ')' => " ")
    normalized = replace(normalized, ':' => "")

    public_names = Symbol[]
    for token in split(normalized, [',', ' ', '\t', '\n'])
        name = strip(token)
        isempty(name) && continue
        occursin(r"^@?[A-Za-z_][A-Za-z0-9_!]*$", name) || continue
        name in ("return", "symbols", "symbols_expr") && continue
        push!(public_names, Symbol(name))
    end

    return public_names
end

function _source_public_names()
    public_names = Symbol[]

    for src_dir in ("src", "lib")
        src_root = normpath(joinpath(@__DIR__, "..", "..", src_dir))
        isdir(src_root) || continue

        for (root, _, files) in walkdir(src_root)
            for file in files
                endswith(file, ".jl") || continue
                path = joinpath(root, file)
                lines = readlines(path)
                in_docstring = false
                line_index = 1

                while line_index <= length(lines)
                    line = lines[line_index]
                    if occursin("\"\"\"", line)
                        in_docstring = !in_docstring
                        count("\"\"\"", line) >= 2 && (in_docstring = !in_docstring)
                    end

                    raw = in_docstring ? "" : _strip_comment(line)
                    stripped = strip(raw)
                    if startswith(stripped, "export ") ||
                            startswith(stripped, "public ") ||
                            startswith(stripped, "@public ") ||
                            startswith(stripped, "SciMLPublic.@public ") ||
                            occursin("Expr(:public", stripped) ||
                            occursin("Expr(:(public)", stripped)
                        statement = raw
                        parens = count(==('('), statement) - count(==(')'), statement)
                        while (endswith(rstrip(statement), ",") || parens > 0) &&
                                line_index < length(lines)
                            line_index += 1
                            statement *= " " * _strip_comment(lines[line_index])
                            parens = count(==('('), statement) - count(==(')'), statement)
                        end
                        append!(public_names, _public_names_from_statement(statement))
                    end

                    line_index += 1
                end
            end
        end
    end

    return sort!(unique(public_names))
end

function _rendered_docs_entries()
    docs_root = normpath(joinpath(@__DIR__, "..", "..", "docs", "src"))
    entries = Set{Symbol}()

    for (root, _, files) in walkdir(docs_root)
        for file in files
            endswith(file, ".md") || continue
            in_docs_block = false
            for line in eachline(joinpath(root, file))
                stripped = strip(line)
                if stripped == "```@docs"
                    in_docs_block = true
                    continue
                elseif startswith(stripped, "```")
                    in_docs_block = false
                    continue
                end

                in_docs_block || continue
                isempty(stripped) && continue
                startswith(stripped, "#") && continue
                identifier = replace(stripped, r"\(.*" => "")
                identifier = split(identifier, ".")[end]
                isempty(identifier) || push!(entries, Symbol(identifier))
            end
        end
    end

    return entries
end

function _binding_owner(mod::Module, name::Symbol)
    return parentmodule(getfield(mod, name))
end

function _has_docstring(mod::Module, name::Symbol)
    return haskey(Docs.meta(mod), Docs.Binding(mod, name))
end

@testset "Sundials public API documentation coverage" begin
    source_public_names = _source_public_names()
    source_owned_public_names = filter(
        name -> _binding_owner(Sundials, name) === Sundials,
        source_public_names
    )
    owned_exports = filter(sort!(collect(names(Sundials; all = false)))) do name
        name !== :Sundials &&
            isdefined(Sundials, name) &&
            _binding_owner(Sundials, name) === Sundials
    end

    @test source_owned_public_names == owned_exports

    undocumented = filter(source_public_names) do name
        !_has_docstring(_binding_owner(Sundials, name), name)
    end
    @test isempty(undocumented)

    rendered_entries = _rendered_docs_entries()
    missing_rendered = filter(name -> name ∉ rendered_entries, source_public_names)
    @test isempty(missing_rendered)
end
