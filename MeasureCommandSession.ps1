Measure-Command {
    $s = New-PSSession -ComputerName PCName -Credential $cred
    1..5 |
    foreach {Invoke-Command $s {Get-Date}}
    Remove-PSSession $s
    } |
    Format-Table -AutoSize TotalSeconds