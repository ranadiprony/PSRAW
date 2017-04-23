<#	
	.NOTES
	===========================================================================
	 Created with: 	VSCode
	 Created on:   	4/23/2017
     Edited on::    4/23/2017
	 Created by:   	Mark Kraus
	 Organization: 	
	 Filename:     	deploy.PSDeploy.ps1
	===========================================================================
	.DESCRIPTION
		PSDeploy for PowerShell Gallery Module Deployment
#>
if ($ENV:BHProjectName -and $ENV:BHProjectName.Count -eq 1) {
    Deploy Module {
        By PSGalleryModule {
            FromSource $ENV:BHProjectName
            To PSGallery
            WithOptions @{
                ApiKey = $ENV:NugetApiKey
            }
        }
    }
}