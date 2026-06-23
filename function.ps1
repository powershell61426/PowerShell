$s = New-PSSession -ComputerName PCName -Credential $cred
Invoke-Command -Session $s -ScriptBlock {function FNAME {}}
Import-PSSession -Session $s -CommandName FNAME
