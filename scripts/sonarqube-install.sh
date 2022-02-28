

#!/bin/bash
# To switch root user
sudo su -
# To install java
amazon-linux-extras install java-openjdk11 -y
# to update the yum repositary
yum update -y
# to change the directory
cd /opt/
# to install the sonarqube
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.7.52159.zip
# to extract the file 
unzip sonarqube-8.9.7.52159.zip
# to rename the file
mv sonarqube-8.9.7.52159 sonarqube
# to create sonar user
useradd sonaradmin
# to Change ownership to the user
chown sonaradmin:sonaradmin sonarqube
# to change the permissions of files
chmod -R 777 /opt/sonarqube/
# to switch to sonar user
su - sonaradmin
# to Start the sonar service
sh /opt/sonarqube/bin/linux-x86-64/sonar.sh start
# to check the status of the sonar service
sh /opt/sonarqube/bin/linux-x86-64/sonar.sh status


