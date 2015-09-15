#!/bin/bash

chmod +x *.sh *.py
sudo apt-get install -y python3-pip libudev-dev
sudo pip3 install python-uinput pyudev

sudo cp touch.py /usr/bin/
sudo cp touch.sh /etc/init.d/

sudo chmod +x /usr/bin/touch.py
sudo chmod +x /etc/init.d/touch.sh

sudo update-rc.d touch.sh defaults
