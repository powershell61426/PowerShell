$s = New-PSSession -ComputerName PCName -Credential $cred
Invoke-Command -Session $s -ScriptBlock {function Get-Bios {Get-WmiObject Win32_Bios}}
Invoke-Command -Session $s -ScriptBlock {Get-Bios}
Import-PSSession -Session $s -CommandName Get-Bios
