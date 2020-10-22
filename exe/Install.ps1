[string]$ScriptPath = $(Split-Path -Parent $PSCommandPath)
[string]$InstallerFile = "filename.exe"

$InstallerArgs = @(
    '/S',
    "/f1'$ScriptPath\answer.iss'"
)

Start-Process "$InstallerFile" -ArgumentList $InstallerArgs -WorkingDirectory "$ScriptPath" -NoNewWindow -Wait