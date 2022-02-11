# SCCM Application Detection Method Script

Simple powershell script that will check the install status of an application using the system registry. 
If application is found and the version is greater than or equal to, will report back as "Installed".

### Dependencies

* This script is for SCCM - Application - Detection Method

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

## Help

Script should detect any application that stores uninstall information in the typical Windows Registry locations. 
 * HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall
 * HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall

If errors are found with DisplayVersion, check that software vendor is not using non 


## Version History

* 1.1.0
    * Initial Release
