# This script will
#     1. Get all the files within a directory and all of its subdirectories.
#     2. Filter to files that match the pattern _Model.cs such as "PersonModel" and "SecurityModel"
#     3. Rename the file, replacing "Model" with "DTO"

Get-Children -File -Recurse -filter *Model.cs | Rename-Item -NewName {$_.name -replace "Model", "DTO"}
