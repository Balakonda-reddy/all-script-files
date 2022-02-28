

#!/bin/bash
# To switch root user
sudo su -
# to update the yum repositary
yum update -y
# To install java
amazon-linux-extras install java-openjdk11 -y
# to change directory
cd /opt/
# to download nexus
wget https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz
# to extract the file
tar -xvzf nexus-3.37.3-02-unix.tar.gz
# to rename the file 
mv nexus-3.37.3-02 nexus
# to add nexus user
adduser nexus
# to set pawwsord for nexus user
passwd nexus nexus
# to change ownership of the file
chown -R nexus:nexus nexus
chown -R nexus:nexus sonatype-work
# to change directory
cd nexus/bin/
# to change some configuration files
vi nexus.rc ---> uncomment #run_as_user="nexus"
# to add files 
vi /etc/systemd/system/nexus.service

[Unit]
Description=nexus service
After=network.target
  
[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User=nexus
Restart=on-abort
TimeoutSec=600
  
[Install]
WantedBy=multi-user.target
# to switch nexus user
su - nexus
# to enable the nexus service
systemctl enable nexus
# to start the nexus service
systemctl start nexus
# to check the status of the nexus service
systemctl status nexus