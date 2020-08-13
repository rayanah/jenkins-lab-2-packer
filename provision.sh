#!/bin/bash
sudo apt-get update -y -q
sudo apt update -y && sudo apt install -y curl vim jq git make docker.io
sudo usermod -aG docker ubuntu
            sudo apt install -y httpd
	    sleep 10
	    cd /var/jenkins_home/workspace/rayanah-tr-pipeline
	    mv ip_address.txt index.html
	    cat index.html > /var/www/html/index.html
            systemd start httpd
            systemd enable httpd
