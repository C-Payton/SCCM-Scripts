# SCCM Compliance Item / Baseline - Change Application Licensing

Powershell script that will check a client machine for compliance and then remediate if necessary. 
These scripts are for checking and remediating a FlexNet, FlexLM, Sentinel RLM, or other ENV based licensing variable on a client machine.

This script is useful because it will ensure your client machines are fully compliant and using the correct license settings. 

## Some use cases:
* Moving to a new license server or new license port. 
* Fixing an incorrectly set license environment variable.

### Dependencies

* This script is for SCCM - Compliance Settings - Configuration Items / Baselines

### How to use this code

* Determine the values needed for variables ( appNewLic , appRegValue )
* Create SCCM Configuration Item and Baseline using Discovery and Remediation scripts. 

## Help

NOTE: This script is for changing an existing license variable only. 
This script will not set the ENV variable on a machine that does not have the variable in the first place. 

## Version History

* 1.0.0
    * Initial Release
