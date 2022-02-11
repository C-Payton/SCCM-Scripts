# SCCM Application Detection Method Script

Simple powershell script that will check the install status of an application using the system registry. 
If application is found and the version is greater than or equal to, will report back as "Installed".

### Dependencies

* This script is for SCCM - Application - Detection Method

### How to use this code

* Determine the values needed for variables ( InstallerVersion , AppName , AppVendor )
* Create SCCM application 
* Set the Detection Method to "Use a custom script to detect the presence of this deployment type"

<img src="https://github.com/C-Payton/SCCM-Scripts/blob/main/DetectionMethod/Detect_App1.png" width="500" height="465"/>&nbsp;
<img src="https://github.com/C-Payton/SCCM-Scripts/blob/main/DetectionMethod/Detect_App2.png" width="500" height="465"/>&nbsp;

**Note: when updating application on SCCM, just update your application package and change the InstallerVersion to the new version desired. 

## Help

Script should detect any application that stores uninstall information in the typical Windows Registry locations. 
 * HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall
 * HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall

If errors are found with DisplayVersion, check that software is not using non standard values in their DisplayVersion registry value. 

## Version History

* 1.1.0
    * Initial Release
