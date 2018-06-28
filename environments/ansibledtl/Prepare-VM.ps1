#Requires -Version 3.0

[CmdletBinding()]
Param(
    [string] [Parameter(Mandatory=$true)]    $VSTSAccount,
    [string] [Parameter(Mandatory=$true)]    $PersonalAccessToken,
    [string] [Parameter(Mandatory=$true)]    $PoolName,
    [string] [Parameter(Mandatory=$false)]   $AgentName = $($env:COMPUTERNAME),
    [string] [Parameter(Mandatory=$false)]   $ChocoPackages = ""
)

Push-Location $PSScriptRoot

try {

    . .\installVSCode.ps1

    . .\startChocolatey.ps1 -PackageList git,nodejs

} finally {

    Pop-Location
}