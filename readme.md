# Add Keeper to Start Menu

## Installation
To run the script and create the startup menu item, copy and paste the following into an admin powershell prompt.
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/SpringboardIT/KeeperShortcut/refs/heads/main/CreateKeeperShortcut.ps1'))} global"
```

What this does:
- `Set-ExecutionPolicy Bypass -Scope Process -Force;` Temporarily disables the default `ExecutionPolicy` that prevents Powershell scripts from being run.
- `[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;` Enables the script to download files from GitHub.
- `iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/SpringboardIT/KeeperShortcut/refs/heads/main/CreateKeeperShortcut.ps1'))} global"` Downloads the setup script and runs it.