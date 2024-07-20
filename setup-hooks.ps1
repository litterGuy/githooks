# hooks/setup-hooks.ps1

# Ensure the hooks directory exists in the .git directory
if (-Not (Test-Path -Path "../.git/hooks")) {
    New-Item -ItemType Directory -Force -Path "../.git/hooks"
}

# Define the list of files to exclude
$excludeFiles = @("setup-hooks.sh", "setup-hooks.ps1")

# Copy hooks from the hooks directory to .git/hooks, excluding specific files
Get-ChildItem -Path "." -File | Where-Object { $excludeFiles -notcontains $_.Name } | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination "../.git/hooks/"
}

# Make sure all hooks scripts are executable
Get-ChildItem -Path "../.git/hooks/*" | ForEach-Object {
    $file = $_.FullName
    icacls $file /grant Users:RX
}
