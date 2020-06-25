$ErrorActionPreference = 'Stop';
$PackageName = 'Wayk Now'
$Version = "2020.2.0.0"

$packageArgs = @{
  packageName   = $PackageName
  fileType      = 'MSI'
  url           = "https://cdn.devolutions.net/download/Wayk/${Version}/WaykNow-x86-${Version}.msi"
  url64bit      = "https://cdn.devolutions.net/download/Wayk/${Version}/WaykNow-x64-${Version}.msi"
  softwareName  = "Wayk Now*"
  checksum      = 'C5703E35920E265ACAB3E2D3FE9709D05EBC15F589873B06DA121EF9DEF90EE5'
  checksumType  = 'sha256'
  checksum64    = 'E03E987D51735E685324F48FBD89984ABBD34591BF8FF0ECB24A1E1EDD311B8B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($PackageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs
