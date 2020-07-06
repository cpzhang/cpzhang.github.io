Get-ChildItem -Path s*.png -Name | Sort {$_.Substring(1,1)*10000 + $_.Substring(3,$_.Length-7)}  | Out-File -FilePath s.txt
$s = ''
foreach ($line in Get-Content .\s.txt) {
    $s = $s + "'" + $line + "',"       
}
$s.Substring(0, $s.Length-1) | Out-File -FilePath ss.txt

