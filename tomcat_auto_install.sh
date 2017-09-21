#!/bin/bash

sudo yum install wget vim git -y
sudo yum install java-1.8.0-openjdk -y

cd /usr/local/
sudo wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
sudo tar -xvzf apache-tomcat-8.5.20.tar.gz
sudo mv  apache-tomcat-8.5.20  tomcat

sudo groupadd tomcat
sudo useradd -M -s /bin/nologin -g tomcat -d /usr/local/tomcat tomcat

sudo chgrp -R tomcat /usr/local/tomcat

cd /usr/local/tomcat


sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/

sudo cp ~/tomcat_install_automatically/tomcat100.service /etc/systemd/system/tomcat.service

sudo systemctl daemon-reload
sudo systemctl start tomcat
