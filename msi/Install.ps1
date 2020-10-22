##*===============================================
##* VARIABLE DECLARATION
##*===============================================
[string]$InstallerFile = "filename.msi"
[array]$InstallerArgs = @(
    '/i',
    "'$ScriptPath\$InstallerFile'",
    '/qn'
)

## <Perform Installation tasks here>
[string]$ScriptPath = $(Split-Path -Parent $PSCommandPath)
[string]$MsiExec = "$env:WINDIR\System32\msiexec.exe"
Start-Process "$MsiExec" -ArgumentList $InstallerArgs -WorkingDirectory "$ScriptPath" -NoNewWindow -Wait