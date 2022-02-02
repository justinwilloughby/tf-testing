Invoke-WebRequest -Uri 'https://github.com/JJWill0ughby/tf-testing/blob/main/dc-install.ps1' -OutFile 'c:\dc-install.ps1'

$password = $args[0]

Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

Install-ADDSForest -DomainName daileydemodomain.com -InstallDNS -SafeModeAdministratorPassword (Convertto-SecureString -AsPlainText $password -Force) -Force
