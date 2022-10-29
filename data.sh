#!/bin/bash
sudo yum -y install git 
sudo yum -y install python-pip
git clone https://github.com/anaparthivaku/python1-car-prediction.git
cd python1-car-prediction
pip3 install -r requirements.txt
screen -m -d  python3 app.py
