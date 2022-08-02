#!/bin/sh

echo "Enter Main Domain Name: "
read dmn
cd sub404
python3 sub404.py -d $dmn
cd ..
subfinder -d $dmn -o sbdmn.txt
nmap -iL sbdmn.txt -p 1-65535 -v
