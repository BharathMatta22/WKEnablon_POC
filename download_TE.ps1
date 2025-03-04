# Define download URL and target path
$DownloadUrl = "https://github.com/otykier/TabularEditor/releases/download/2.16.4/TabularEditor.Portable.zip"
$InstallerPath = "$env:TEMP\TabularEditor.msi"

# Download the installer
Invoke-WebRequest -Uri $DownloadUrl -OutFile $InstallerPath

# Install Tabular Editor silently
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$InstallerPath`" /quiet /norestart" -Wait -NoNewWindow

# Clean up the installer
Remove-Item -Path $InstallerPath -Force

Write-Host "Tabular Editor has been installed successfully."
