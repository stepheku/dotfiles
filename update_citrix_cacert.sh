#!/bin/bash

# This is for when you're installing Citrix Receiver
# for the first time

sudo rm -rf /opt/Citrix/ICAClient/keystore/cacerts
sudo ln -s /etc/ssl/certs /opt/Citrix/ICAClient/keystore/cacerts
