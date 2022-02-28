
#!/bin/bash
# To switch root user
sudo su -
# to update the yum repositary
yum update -y
# To install java
amazon-linux-extras install java-openjdk11 -y
# to change directory
cd /opt
# to install tomcat 
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56-windows-x64.zip
# to extract the file
unzip apache-tomcat-9.0.56-windows-x64.zip
# to rename the file
mv apache-tomcat-9.0.56 /opt/tomcat
# to change the permissions of the file
chmod -R 700 tomcat
# to change the directory
cd /tomcat/bin
# to start the tomcat server
sh ./startup.sh