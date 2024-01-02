#!/bin/bash
# Update the system
sudo yum update -y

# Add Jenkins repository and install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

#Import a key file from Jenkins-CI to enable installation from the package:
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade

#Install Java (Amazon Linux 2):
sudo amazon-linux-extras install java-openjdk11 -y

#Install Jenkins:
sudo yum install jenkins -y

# Start Jenkins service and enable it to start on boot
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins

sudo yum remove awscli
wget https://s3.amazonaws.com/aws-cli/awscli-bundle.zip.
unzip awscli-bundle.zip.
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws.
./awscli-bundle/install -b ~/bin/aws.
./awscli-bundle/install -h.
aws configure.

sudo yum install git docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo usermod -a -G docker jenkins

# Install required packages
sudo yum install -y curl

# Download and install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Give execute permissions to the Docker Compose binary
sudo chmod +x /usr/local/bin/docker-compose

# Create a symbolic link to make it accessible globally
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

