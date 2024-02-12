# replace trim remove blank space line in powershell output
# set timezone from event

$a = Get-EventLog -LogName System -Source EventLog -Before $begin | Select-Object -Property *
foreach ($b in $a)
{
    if ($b.EventID -eq 6013) {
        Write-Host $b.EventId
        $c = $b
        Write-Host $b
        break
    }
}

 

$d = $c.ReplacementStrings.Split([System.Environment]::NewLine,[System.StringSplitOptions]::RemoveEmptyEntries)[2].Split(" ",2)[1]

 

Set-TimeZone -Id $d
