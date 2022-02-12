<# .SYNOPSIS 
    Check computer license server ENV variable for Compliant status
 
.DESCRIPTION 
    This is for use with SCCM as a Compliance Item / Baseline (Discovery)
    This script is will check the Compliant status of any FlexNet, FlexLM, Sentinel RLM, License server.
    Scipt will check System ENV for specified "APP_LICENSE_FILE" and return "Compliant" or "Non-Compliant".
    
.EXAMPLE 
    .\appLicDiscovery.ps1
     
.NOTES 
     Change the Global Variables as needed for each application.
        $appNewLic = the port@license.server.com
        $appRegValue = the system ENV variable your application uses for licensing clients
            - Ex. LM_LICENSE_FILE , NILM_LICENSE_FILE , or CDS_LIC_FILE
	
.NOTES 
    FileName:  appLicDiscovery.ps1
    Author:    Payton C
    Created:   12/3/2019
    Updated:   2/11/2022
    Version:   1.1.0 
#>

##Global Variable Declaration
$appNewLic = " "
$appRegValue = " "

# Using the appRegValue to check for license server
$RegCheck = (Get-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment').$appRegValue

#Write-Host "Here is the License Server: $RegCheck"	

if (($RegCheck) -and ($RegCheck -notlike "*$appNewLic"))
    #Write Non-Compliant if the ENV variable exists and isn't set to the correct license server
	{Write-Host 'Non-Compliant'}	
else
    #Write Compliant if the ENV variable is correct or doesn't exist (I.e application not installed on that Computer) 
	{Write-Host 'Compliant'}    
	