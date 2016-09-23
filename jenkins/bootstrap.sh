#!/bin/bash

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo "deb http://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list

apt-get update
apt-get -y install openjdk-7-jre-headless
apt-get -y install git
apt-get -y install docker.io

apt-get -y install jenkins

echo '********************************'
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo '********************************'
