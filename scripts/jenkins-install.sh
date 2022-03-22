
yum update -y
yum install git -y
amazon-linux-extras install epel -y
amazon-linux-extras install java-openjdk11 -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword


#!/bin/bash
# To switch root user
sudo su -
# To install java
amazon-linux-extras install java-openjdk11 -y
# to update the yum repositary
yum update -y
# To install jenkins
yum install jenkins -y 
# To start jenkins service 
systemctl start jenkins
# To enable the jenkins service
systemctl enable jenkins
# To see the admin password of the jenkin user
cat /var/lib/jenkins/secrets/initialAdminPassword
