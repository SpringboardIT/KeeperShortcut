$KeeperId = Get-StartApps | Where-Object -Property Name -Eq 'Keeper Password Manager' | Select -ExpandProperty AppID

$TargetPath =  "shell:AppsFolder\$KeeperId"
$WScriptShell = New-Object -ComObject WScript.Shell
$StartupFolder = $WScriptShell.SpecialFolders("Startup")
$ShortcutFile = "$StartupFolder\Keeper Password Manager.lnk"
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetPath
$Shortcut.Save()
