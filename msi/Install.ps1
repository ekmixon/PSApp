## Variables: Environment
[string]$DateString = (Get-Date).ToString("yyyy-MM-dd-hhmmss")
[string]$SrcPath = $(Split-Path -Parent $PSCommandPath)
[string]$MsiExec = "$env:WINDIR\System32\msiexec.exe"
[string]$TmpPath = "$env:TEMP"

## Variables: Installer specific
[string]$SrcFile = "filename.msi"
[array]$InstallOptions = @(
    '/i',
    "'$SrcPath\$SrcFile'",
    '/qn'
)

## Perform installation tasks here
Start-Transcript -Path "$TmpPath\$SrcFile.$DateString.log"
Try {
    Start-Process $MsiExec -ArgumentList $InstallOptions -WorkingDirectory $SrcPath -NoNewWindow -Wait
} Catch {
    Write-Error -Message "Error"
}
Stop-Transcript