[string]$ScriptPath = $(Split-Path -Parent $PSCommandPath)
[string]$installerFile = "filename.exe"

$InstallerArgs = @(
    '/S',
    "/f1'$ScriptPath\answer.iss'"
)

Start-Process "$installerFile" -ArgumentList $InstallerArgs -WorkingDirectory "$ScriptPath" -NoNewWindow -Wait