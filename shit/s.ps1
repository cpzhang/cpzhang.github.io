Get-ChildItem -Path s*.png -Name | Out-File -FilePath s.txt
$s = ''
foreach ($line in Get-Content .\s.txt) {
    $s = $s + "'" + $line + "',"       
}
$s.Substring(0, $s.Length-1) | Out-File -FilePath ss.txt

