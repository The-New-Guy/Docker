#!/bin/bash

apt-get update
apt-get full-upgrade -y
apt-get autoremove -y
apt-get autoclean
apt-get install ruby metasploit-framework -y