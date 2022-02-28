
#!/bin/bash
# To switch root user
sudo su -
# to update the yum repositary
yum update -y
# to add the rpm repo
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
# to create the file
vi /etc/yum.repos.d/kibana.repo

[kibana-7.x]
name=Kibana repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md

# to install the kibana
yum install kibana -y
# to reload the kibana server
systemctl daemon-reload
# to enable the kibana server
systemctl enable kibana.service
# to start the kibana server
systemctl start kibana.service
# to check the status of the kibana server
systemctl status kibana.service