
#!/bin/bash
# To switch root user
sudo su -
# to update the yum repositary
yum update -y
# to add the rpm repo
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
# to create the file
vi /etc/yum.repos.d/elasticsearch.repo

[elasticsearch]
name=Elasticsearch repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=0
autorefresh=1
type=rpm-md

# to install the elasticsearch
yum install --enablerepo=elasticsearch elasticsearch -y
# to reload the elastisearch 
systemctl daemon-reload
# to enable the elasticsearch service
systemctl enable elasticsearch.service
# to start the elasticsearch service
systemctl start elasticsearch.service
# to check the status of the elasticsearch service
systemctl status elasticsearch.service
