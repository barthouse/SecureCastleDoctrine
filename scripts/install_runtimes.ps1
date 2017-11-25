# VC9 (Visual C++ 2008 SP1)
Write-output "Installing VC9 Runtime..."
Invoke-WebRequest -OutFile $env:Temp\vc9_redist_x64.exe https://download.microsoft.com/download/2/d/6/2d61c766-107b-409d-8fba-c39e61ca08e8/vcredist_x64.exe
Start-Process -FilePath $env:Temp\vc9_redist_x64.exe -ArgumentList "/q" -Wait
Remove-Item $env:Temp\vc9_redist_x64.exe

# VC10 (Visual C++ 2010 SP1)
Write-output "Installing VC10 Runtime..."
Invoke-WebRequest -OutFile $env:Temp\vc10_redist_x64.exe https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe
Start-Process -FilePath $env:Temp\vc10_redist_x64.exe -ArgumentList "/norestart /passive" -Wait
Remove-Item $env:Temp\vc10_redist_x64.exe

# VC 11 (Visual C++ 2012 Update 4)
Write-output "Installing VC11 Runtime..."
Invoke-WebRequest -OutFile $env:Temp\vc11_redist_x64.exe https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe
Start-Process -FilePath $env:Temp\vc11_redist_x64.exe -ArgumentList "/norestart /passive /install" -Wait
Remove-Item $env:Temp\vc11_redist_x64.exe

# VC 13 (Visual C++ 2013)
Write-output "Installing VC13 Runtime..."
Invoke-WebRequest -OutFile $env:Temp\vc13_redist_x64.exe https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe
Start-Process -FilePath $env:Temp\vc13_redist_x64.exe -ArgumentList "/norestart /passive /install" -Wait
Remove-Item $env:Temp\vc13_redist_x64.exe

# VC 14 (Visual C++ 2015 Update 3)
Write-output "Installing VC14 Runtime..."
Invoke-WebRequest -OutFile $env:Temp\vc14_redist_x64.exe https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe
Start-Process -FilePath $env:Temp\vc14_redist_x64.exe -ArgumentList "/norestart /passive /install" -Wait
Remove-Item $env:Temp\vc14_redist_x64.exe

# VC 15 (Visual C++ 2017)
Write-output "Installing VC15 Runtime..."
Invoke-WebRequest -OutFile $env:Temp\vc15_redist_x64.exe https://go.microsoft.com/fwlink/?LinkId=746572
Start-Process -FilePath $env:Temp\vc15_redist_x64.exe -ArgumentList "/norestart /passive /install" -Wait
Remove-Item $env:Temp\vc15_redist_x64.exe

Write-output "Done."
