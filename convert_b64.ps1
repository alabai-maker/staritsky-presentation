$dir = "C:\Users\v2913\AppData\Local\Temp\opencode\images"
$files = @("portrait.jpg", "portrait_1863.jpg", "portrait_1870s.jpg", "star_krop.jpg", "vyshyvanka.png")
foreach ($f in $files) {
    $bytes = [System.IO.File]::ReadAllBytes("$dir\$f")
    $b64 = [System.Convert]::ToBase64String($bytes)
    $outName = $f -replace '\.\w+$', '.b64'
    [System.IO.File]::WriteAllText("$dir\$outName", $b64)
    Write-Output "Done: $outName"
}
