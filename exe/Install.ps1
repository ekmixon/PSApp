##*===============================================
##* VARIABLE DECLARATION
##*===============================================
[string]$InstallerFile = "filename.exe"
[array]$InstallerArgs = @(
    '/S',
    "/f1'$ScriptPath\answer.iss'"
)

## <Perform Installation tasks here>
[string]$ScriptPath = $(Split-Path -Parent $PSCommandPath)
Start-Process "$InstallerFile" -ArgumentList $InstallerArgs -WorkingDirectory "$ScriptPath" -NoNewWindow -Wait