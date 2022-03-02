
#!/bin/bash
# To switch root user
sudo su -
# to update the yum repositary
yum update -y
# To install the httpd(apache)
yum install httpd -y 
# to enable the httpd service
systemctl enable httpd 
# to start the httpd service
systemctl start httpd

# this is testing 1
<<<<<<< HEAD
# this is testing 3
# this is testing 4
=======
# this is testing 2
>>>>>>> 6598c0712369768a5824f805d53241f53f4e52ad
