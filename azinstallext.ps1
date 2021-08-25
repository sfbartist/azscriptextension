# install IIS from Azure Academy
install-windowsfeature -name Web-Server -IncludeManagementTools
Set-Location -Path c:\inetpub\wwwroot
Add-Content iisstart.htm
    "<H1><center>WELCOME to my web Server $env:COMPUTERNAME, Azure Rocks!</Center></h1>"

Invoke-Command -ScriptBlock{iisreset}