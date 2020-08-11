#!/bin/bash
sudo apt-get update -y -q
sudo apt update -y && sudo apt install -y curl vim jq git make docker.io
sudo usermod -aG docker ubuntu
