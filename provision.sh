#!/bin/bash

curl -Ls get.docker.com | sh
sudo usermod -aG docker ubuntu

sudo mkdir -p /home/ubuntu/api
sudo chmod a+rwx /home/ubuntu/api
sudo chown ubuntu:ubuntu /home/ubuntu/api


sudo touch /etc/systemd/system/webserver.service
sudo chmod a+rw /etc/systemd/system/webserver.service
cat <<EOF > /etc/systemd/system/webserver.service
[Unit]
Description=Nginx API address server
After=docker.service
[Service]
Type=simple
ExecStart=sudo docker container run -d --name nginx -p 80:80 --restart=always -v /home/ubuntu/api/:/usr/share/nginx/html:ro nginx
[Install]
WantedBy=multi-user.target
EOF
sudo chmod a+r /etc/systemd/system/webserver.service
sudo systemctl daemon-reload
sudo systemctl enable webserver
sudo systemctl start webserver


