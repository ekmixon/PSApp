[string]$ScriptPath = $(Split-Path -Parent $PSCommandPath)
[string]$MsiExec = "$env:WINDIR\System32\msiexec.exe"
[string]$InstallerFile = "filename.msi"

$InstallerArgs = @(
    '/i',
    "'$ScriptPath\$InstallerFile'",
    '/qn'
)

Start-Process "$MsiExec" -ArgumentList $InstallerArgs -WorkingDirectory "$ScriptPath" -NoNewWindow -Wait