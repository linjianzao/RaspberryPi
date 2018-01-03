#!/usr/bin/env bash

sudo cp /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
sudo echo "deb http://mirrors.aliyun.com/raspbian/raspbian/ wheezy main non-free contrib" > /etc/apt/sources.list.d/raspi.list
sudo echo "deb-src http://mirrors.aliyun.com/raspbian/raspbian/ wheezy main non-free contrib" >> /etc/apt/sources.list.d/raspi.list
sudo apt-get update -y
sudo apt-get upgrade -y

sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo apt-get install ntpdate -y
sudo ntpdate time.nist.gov
sudo apt-get install python-pip python-dev python-virtualenv  -y
sudo easy_install -U pip

#install tensorflow for raspberry pi
wget https://github.com/samjabrahams/tensorflow-on-raspberry-pi/releases/download/v1.1.0/tensorflow-1.1.0-cp27-none-linux_armv7l.whl
sudo pip install tensorflow-1.1.0-cp27-none-linux_armv7l.whl

sudo pip uninstall mock
sudo pip install mock

sudo apt-get install vim
