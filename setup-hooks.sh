#!/bin/sh

# Ensure the hooks directory exists
mkdir -p ../.git/hooks

# Find all files in the hooks directory that are not setup-hooks.sh or setup-hooks.ps1 and copy them
find . -type f ! -name 'setup-hooks.sh' ! -name 'setup-hooks.ps1' -exec cp {} .git/hooks/ \;

# Make sure all hooks scripts are executable
chmod +x ../.git/hooks/*
