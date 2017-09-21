#!/bin/bash
sudo yum install git -y
git clone https://github.com/prabath88/tomcat_install_automatically.git
sudo chmod +x /tomcat_install_automatically/*
sudo sh /tomcat_install_automatically/tomcat_auto_install.sh
