<#	
	.NOTES
	===========================================================================
	 Created with: 	VSCode
	 Created on:   	4/23/2017
     Edited on::    4/23/2017
	 Created by:   	Mark Kraus
	 Organization: 	
	 Filename:     	build.ps1
	===========================================================================
	.DESCRIPTION
		Build Initliazation
#>
param ($Task = 'Default')

Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null

Install-Module Psake, PSDeploy, BuildHelpers, platyPS, PSScriptAnalyzer -force
Install-Module Pester -Force -SkipPublisherCheck
Import-Module Psake, BuildHelpers, platyPS, PSScriptAnalyzer

Set-BuildEnvironment 

Invoke-psake -buildFile .\BuildTools\psake.ps1 -taskList $Task -nologo
exit ([int](-not $psake.build_success))