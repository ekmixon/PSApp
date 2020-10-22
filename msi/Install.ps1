[string]$ScriptPath = $(Split-Path -Parent $PSCommandPath)
[string]$MsiExec = "$env:WINDIR\System32\msiexec.exe"
[string]$MsiFile = "filename.msi"

$InstallerArgs = @(
    '/i',
    "'$ScriptPath\$MsiFile'",
    '/qn'
)

Start-Process "$MsiExec" -ArgumentList $InstallerArgs -WorkingDirectory "$ScriptPath" -NoNewWindow