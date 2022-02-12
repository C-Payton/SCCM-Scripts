<# .SYNOPSIS 
    Changes computer license server ENV variable based on Compliant status from Discovery 
 
.DESCRIPTION 
    This is for use with SCCM as a Compliance Item / Baseline (Remediation)
    Scipt will change System ENV for specified "APP_LICENSE_FILE"
    
.EXAMPLE 
    .\appLicRemediation.ps1
     
.NOTES 
     Change the Global Variables as needed for each application.
        $appNewLic = the port@license.server.com
        $appRegValue = the system ENV variable your application uses for licensing clients
            - Ex. LM_LICENSE_FILE , NILM_LICENSE_FILE , or CDS_LIC_FILE
	
	
.NOTES 
    FileName:  appLicRemediation.ps1
    Author:    Payton C
    Created:   12/3/2019
    Updated:   2/11/2022
    Version:   1.1.0
#>

$appNewLic = " "
$appRegValue = " "

#Set the Registry Key and Value
[System.Environment]::SetEnvironmentVariable("$appRegValue", "$appNewLic",[System.EnvironmentVariableTarget]::Machine)