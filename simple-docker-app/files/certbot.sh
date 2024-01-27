#!/bin/bash
EMAIL="info@webinir.com"
DOMAIN="app.webinir.com"
# Install Certbot
apt-get update -y
apt-get install -y certbot

# Generate SSL certificate
certbot certonly --standalone -d $DOMAIN -d www.$DOMAIN --non-interactive --agree-tos --email $EMAIL --cert-name app-cert 

# Change directory and run docker compose

cd /home/simple-docker-app/ && docker compose up -d --build
