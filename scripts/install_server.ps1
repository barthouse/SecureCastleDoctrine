$wampDir = "c:\wamp"
$mysql = "$wampDir\bin\mysql\mysql5.7.19\bin\mysql.exe"
$wwwDir = "$wampDir\www"
$ticketServerDir = "..\minorGems\game\ticketServer"
$castleServerDir = "..\CastleDoctrine\server"
$reflectorDir = "..\CastleDoctrine\reflector"

if (-Not(Test-Path $wampDir)) {
	"WAMP is not installed.  Please run install_wamp.bat first.  Exiting."
	exit
}

if (Test-Path "$wwwDir\ticketServer") {
	Remove-item "$wwwDir\ticketServer" -Recurse
}
Copy-Item $ticketServerDir -Destination "$wwwDir\ticketServer" -Recurse -Force

if (Test-Path "$wwwDir\castleServer") {
	Remove-item "$wwwDir\castleServer" -Recurse
}
Copy-Item $castleServerDir -Destination "$wwwDir\castleServer" -Recurse -Force

if (Test-Path "$wwwDir\reflector") {
	Remove-item "$wwwDir\reflector" -Recurse
}
Copy-Item $reflectorDir -Destination "$wwwDir\reflector" -Recurse -Force

& $mysql -u root -pmysqlpass -e "create database ticketsdb";

& $mysql -u root -pmysqlpass -e "create database castledb";

# initialize ticket database
# $url = "http://localhost:8080/ticketServer/server.php"
# Invoke-WebRequest -OutFile $wampInstall -Uri $url -UserAgent $agent

# initialize castle database
# $url = "http://localhost:8080/castleServer/server.php"
# Invoke-WebRequest -OutFile $wampInstall -Uri $url -UserAgent $agent

# create ticket for test@test.com
