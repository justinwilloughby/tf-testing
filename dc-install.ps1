Invoke-WebRequest -Uri 'https://contosowilloughbystorage.blob.core.windows.net/scripts/dc-install.ps1' -OutFile 'c:\dc-install.ps1'

$password = $args[0]

Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

Install-ADDSForest -DomainName daileydemodomain.com -InstallDNS -SafeModeAdministratorPassword (Convertto-SecureString -AsPlainText $password -Force) -Force
