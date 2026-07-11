$ErrorActionPreference = 'Stop'

$packageName = 'uniTerm'
$version = '1.4.1'
$installerUrl = "https://github.com/ys-ll/uniterm/releases/download/v${version}/uniterm-windows-amd64-installer-v${version}.exe"
$checksumType = 'sha256'
$checksum64 = 'a5f1ae8001152d745b1106501b09a2cf9d43982421cfcd5669caef4662d4335f'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $installerUrl
  checksumType64 = $checksumType
  checksum64     = $checksum64
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
