# Presentation

Our Apache deployment is made of two scripts:
- The first one named "chocolatey_install.ps1" allows us to install the chocolatey packet manager.
- The second one named "Apache_deployment.sh" will use the chocolatey packet manager in order to install Apache as a service and set the apache bin folder to the PATH.

The binary files are from the Apache Haus community.

# How to install it

## Chocolatey Packet Manager

First, you have to open a PowerShell as an Administrator. Then, you have to execute the script "chocolatey_install.ps1". It will allow us to use the command "choco" through the chocolatey packet manager and easily install Apache.

Once the installation done, close the PowerShell.

## Apache Deployment

First, you to open a PowerShell as an Administrator. Then, you have to execute the script "Apache_deployment.sh". It will install the Apache server (version 2.4.41) as a service and add the apache bin folder to the path (in order to let the user use the apache command). When the script asks you "Do you want to run the script :", you will have to enter "A" for yes to all.

This script also install the Visual C++ 2008 Redistributable Package.

You can customize this script by modifying the parameters
- /installLocation - Intstall to a different destination folder. Default: $Env:AppData\Apache*
- /serviceName - The name of the windows service which will be create. Default: Apache
- /port - The port Apache will listen to. Default: 80:

Depending on which module you need to activate, you have to open the httpd.conf file (located in /conf folder) and enable or disable the module you need (by removing or adding "#" from line 74 to line 180).

# For further development

## Some verifications

Apache server will listen by default on port 80. The HTML file can be put on the htdocs folder (C:\Apache24\htdocs).
Then, through the browser, you can access by doing "http://localhost/your-html-page.html".

Also, for the first manipulations, you can verify on the httpd.conf file (Apache24\conf\) that the module "httpd-ssl.conf" & "httpd-ahssl.conf" are disabled by verifying that "#" is present:  

"#Include conf/extra/httpd-ssl.conf"
"#Include conf/extra/httpd-ahssl.conf"

More, you can verify that "SRVROOT" is set up on the right path "Define SRVROOT "Path\to\Apache24\Folder"".

## Some useful commands

- Stop Apache	    			httpd -k stop
- Start Apache					httpd –k start
- Restart Apache				httpd -k restart
- Uninstall Apache Service		httpd -k uninstall
- Test Config Syntax			httpd -t
- Version Details				httpd -V
- Command Line Options List		httpd -h
