#!/bin/bash

echo "1] cloning"
git clone https://github.com/strellic/Hackbox
cd Hackbox/hackbox_server/
echo "2] installing dependencies"
npm install
echo "3] creating config file"
echo "PORT=3701
MONGO_USER=hackbox
MONGO_PASS=mongo_pass
MONGO_IP=127.0.0.1:27017
MONGO_DBNAME=hackbox
JWT_SECRET=jwt_secret
BOX_DURATION=60
ORIGIN=https://hackbox.example.com
OPENVPN_CA_PASS=ca_pass
OPENVPN_VOLUME=ovpn-data-hackbox
OPENVPN_SERVER=vpn.example.com
ENABLE_GOTTY=true
GOTTY_PORT=3702
GOTTY_URL=http://localhost:3702" > .env
echo "4] starting..."
npm start
