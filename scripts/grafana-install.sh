
#!/bin/bash
# To switch root user
sudo su -
# To install java
amazon-linux-extras install java-openjdk11 -y
# to update the yum repositary
yum update -y
# to create file 
vi /etc/yum.repos.d/grafana.repo

[grafana]
name=grafana
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
# to install grafana
yum install grafana -y
# to reload the grafana server
systemctl daemon-reload
# to start the grafana server
systemctl start grafana-server
# to check the status grafana server
systemctl status of the  grafana-server
# to enable the grafana server
systemctl enable grafana-server.service