$ErrorActionPreference = 'Stop'

$packageName = 'uniTerm'
$version = '1.4.1'
$installerUrl = "https://github.com/ys-ll/uniterm/releases/download/v${version}/uniterm-windows-amd64-installer-v${version}.exe"
$checksumType = 'sha256'
$checksum64 = '0000000000000000000000000000000000000000000000000000000000000000'

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
