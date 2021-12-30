#!/bin/bash
# This script removes only the last parenthesized string in ALL file names in the current directory
re='(.*)(\([^)]*\))(.*)'

for file in *; do
    if [[ $file =~ $re ]]; then
        mv -i -- "$file" "${BASH_REMATCH[1]}${BASH_REMATCH[3]-}"
    fi
done

