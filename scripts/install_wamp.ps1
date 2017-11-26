#requires -version 4.0
#requires -runasadministrator

$wampDir = "c:\wamp"

if (Test-Path $wampDir ) {
	"WAMP is already installed.  Exiting."
	exit
}

.\install_runtimes.ps1

Write-output "Installing WAMP to $wampDir..."

$url = "https://sourceforge.net/projects/wampserver/files/latest/download"
$wampInstall = $env:Temp + "\wampinstall.exe"
$agent = "[Microsoft.PowerShell.Commands.PSUserAgent]::FireFox"

Invoke-WebRequest -OutFile $wampInstall -Uri $url -UserAgent $agent

$args = "/norestart /dir=$wampDir /silent"
Start-process -FilePath $wampInstall -ArgumentList $args -Wait

Write-output "Changing listening port to 8080 ..."

$httpdConf = "$wampDir\bin\apache\apache2.4.27\conf\httpd.conf"
$lines = Get-Content $httpdConf
$lines = $lines.Replace('Listen 0.0.0.0:80','Listen 0.0.0.0:8080')
$lines = $lines.Replace('Listen [::0]:80','Listen [::0]:8080')
$lines = $lines.Replace('ServerName localhost:80','ServerName localhost:8080')

Out-File -FilePath $httpdConf -InputObject $lines -Encoding ASCII

Write-output "Starting Services ..."

net start wampmysqld64
net start wampmariadb64
net start wampapache64

Write-output "Setting MySql root password ..."

$mysqladmin = "$wampDir\bin\mysql\mysql5.7.19\bin\mysqladmin.exe"

& $mysqladmin -u root password mysqlpass

Write-output "Done."
