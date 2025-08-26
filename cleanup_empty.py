#!/usr/bin/env python3

import re

# Read the file
with open('lib/libsundials_api.jl', 'r') as f:
    content = f.read()

# Pattern to match empty functions (with just comments or nothing)
# This matches function definitions with empty or comment-only bodies
pattern = r'function\s+(\w+)\([^)]*\)\s*\n(?:\s*#[^\n]*\n)*\s*end'

# Remove all matching patterns
cleaned_content = re.sub(pattern, '', content)

# Also remove multiple consecutive blank lines
cleaned_content = re.sub(r'\n\n\n+', '\n\n', cleaned_content)

# Write back the cleaned content
with open('lib/libsundials_api.jl', 'w') as f:
    f.write(cleaned_content)

print("Cleaned up empty functions")