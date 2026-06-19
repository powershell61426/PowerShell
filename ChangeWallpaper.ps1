$s = New-PSSession -ComputerName PCName -Credential $cred
Copy-Item "C:\LocalDestination\background.jpg" -Destination "C:\RemoteDestination\background.jpg" -ToSession $s
Invoke-Command -Session $s -ScriptBlock{ 
    Set-ItemProperty ` 
    -Path "HKCU:\Control Panel\Desktop" ` 
    -Name Wallpaper ` 
    -Value "C:\LocalDestination\background.jpg" `
}