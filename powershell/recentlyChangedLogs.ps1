# This script will
#     1. Get the fullName (path) and update time of all .log files
#     2. Filter to log files with write time of today

$DST = ([datetime]::Today)
get-childitem -Path "C:\" -file -filter "*.log" -Recurse 2>$null | where-object { $_.LastWriteTime -ge $DST } | select-object -property "FullName","LastWriteTime"