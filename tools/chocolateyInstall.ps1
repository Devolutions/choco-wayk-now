$ErrorActionPreference = 'Stop';
$packageName= 'Wayk Now'
$Version = "2019.2.1.0"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "https://cdn.devolutions.net/download/Wayk/2019.2.1.0/WaykNow-x86-2019.2.1.0.msi#_ga=2.10116147.725310804.1573225798-1075188698.1557089024"
  url64bit      = "https://cdn.devolutions.net/download/Wayk/2019.2.1.0/WaykNow-x64-2019.2.1.0.msi#_ga=2.10116147.725310804.1573225798-1075188698.1557089024"
  softwareName  = "Wayk Now*"
  checksum      = '7B63C6240E0731313E2C3931EF14E475BFCD28F243A349ABFDD78BEA3731C867'
  checksumType  = 'sha256'
  checksum64    = '2FA20998218FFA397A4705AA70B121EAB89A7DBEF804D79FC7FAE2F1C7AE3CD4'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs