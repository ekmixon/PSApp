## Variables: Environment
[string]$DateString = (Get-Date).ToString("yyyy-MM-dd-hhmmss")
[string]$SrcPath = $(Split-Path -Parent $PSCommandPath)
[string]$TmpPath = "$env:TEMP"

## Variables: Installer specific
[string]$SrcFile = "filename.exe"
[array]$InstallOptions = @(
    '/S',
    "/f1'$ScriptPath\answer.iss'"
)

## Perform installation tasks here
Start-Transcript -Path "$TmpPath\$SrcFile.$DateString.log"
Try {
    Start-Process "$InstallerFile" -ArgumentList $InstallOptions -WorkingDirectory "$SrcPath" -NoNewWindow -Wait
} Catch {
    Write-Error -Message "Error"
}
Stop-Transcript