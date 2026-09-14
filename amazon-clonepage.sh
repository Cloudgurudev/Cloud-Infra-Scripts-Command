#! /bash/bin

# install Apache Web server and Git on RHEL, CentOS distrubutions
yum install httpd git -y

# Start service immediately
systemctl start httpd

# check Apache's status
systemctl status httpd

# installing Apache Web Server on Ubuntu distribution
sudo apt update
sudo apt install -y apache2 git
sudo systemctl enable --now apache2
cd
# change directory to Apache default document root and download the git repo into the location
cd /var/www/html
sudo git clone https://github.com/Ironhack-Archive/online-clone-amazon.git

# move
mv online-clone-amazon/* .

# continously display apache log entries
tail -f /var/log/httpd/access_log
