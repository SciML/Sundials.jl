#!/usr/bin/env python3

import re

# Read the file
with open('lib/libsundials_api.jl', 'r') as f:
    content = f.read()

# Pattern to match functions that only contain the error call
# This matches function definitions followed by just an error call
pattern = r'function\s+(\w+)\([^)]*\)\s*\n\s*error\("Cannot auto-convert to NVector without context\. Pass an NVector created with NVector\(value, ctx\) instead\."\)\s*\nend'

# Remove all matching patterns
cleaned_content = re.sub(pattern, '', content)

# Also remove multiple consecutive blank lines
cleaned_content = re.sub(r'\n\n\n+', '\n\n', cleaned_content)

# Write back the cleaned content
with open('lib/libsundials_api.jl', 'w') as f:
    f.write(cleaned_content)

print("Cleaned up error-only wrapper functions")