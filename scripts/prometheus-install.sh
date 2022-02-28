

#!/bin/bash
# To switch root user
sudo su -
# To install java
amazon-linux-extras install java-openjdk11 -y
# to update the yum repositary
yum update -y
# to create prometheus user
useradd -m -s /bin/bash prometheus
# to remove password for prometheus user
passwd -d prometheus
# to give all permissions to that user
vi /etc/sudoers.d/90-cloud-init-users
# to install prometheus 
wget https://github.com/prometheus/prometheus/releases/download/v2.33.3/prometheus-2.33.3.linux-amd64.tar.gz
# to extract the file
tar -xvf prometheus-2.33.3.linux-amd64.tar.gz
# to rename the file
mv prometheus-2.33.3.linux-amd64/ prometheus/
# to create the folder
mkdir -p ~/prometheus/data
# to create the file
vi /etc/systemd/system/prometheus.service

[Unit]
Description=Prometheus Server
Documentation=https://prometheus.io/docs/introduction/overview/
After=network-online.target

[Service]
User=prometheus
Restart=on-failure


#Prometheus on different path user
ExecStart=/home/prometheus/prometheus/prometheus \
  --config.file=/home/prometheus/prometheus/prometheus.yml \
  --storage.tsdb.path=/home/prometheus/prometheus/data

[Install]
WantedBy=multi-user.target

# to relaod the prometheus
systemctl daemon-reload
# to enable the prometheus server
systemctl enable prometheus
# to start the prometheus server
systemctl start prometheus
# to check status of the prometheus server
systemctl status prometheus

