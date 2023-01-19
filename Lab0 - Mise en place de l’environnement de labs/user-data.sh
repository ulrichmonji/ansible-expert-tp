#!/bin/bash
# AMI Amazone Linux
sudo setenforce 0
echo -e "\nDisable Selinux"
echo -e "\nConfigure ssh password for ec2-user"
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart
sudo chpasswd <<<"ec2-user:a231e83092beedf5c757691a1e26462a"
echo -e "\nupdate system"
sudo yum update -y
echo -e "\nInstall git"
sudo yum -y install git
echo -e "\nInstall Docker"
sudo amazon-linux-extras install docker
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
echo -e "\nInstall Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose