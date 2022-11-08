
param (
    $BreakValue,
    [int]$Delay=10,
    $CodeBlock
)

while ($true) {
    Clear-Host
    Write-Host "Running Code Block { $CodeBlock } "
    $res = $CodeBlock.Invoke()
    if ($res -eq $BreakValue) {
        Write-Host "Current Value: $res"
        Write-Host "Desired Value: $BreakValue"
        Write-Host "Success!!"
        break
    }
    Write-Host "Current Value: $res"
    Write-Host "Desired Value: $BreakValue"
    Write-Host "Sleeping for $Delay seconds" -NoNewline
    For ($i=0; $i -lt $Delay; $i++) {
        Write-Host "." -NoNewline
        Start-Sleep 1
    }
}



