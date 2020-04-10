#! /bin/bash
echo "Installing apache server as a service"
choco install apache-httpd --version=2.4.41 --params '"/installLocation:C:\ /port:80 /serviceName:Apache"'
echo "Adding Apache bin to the path"
set PATH=%PATH%;C:\Apache24\bin 