#!/bin/bash

#Trelis Installation
cd ~
mkdir trelis
cd trelis
curl -1 -v --disable-epsv --ftp-skip-pasv-ip -u sstern3@wisc.edu --ftp-ssl \ --output trelis.deb    ftp://ftp.box.com/CNERG/INTERNAL/Resources/Trelis/Trelis-16.3.3-Lin64.deb > trelis.deb;
    #Replace sstern3 with username as needed; external password must be set on box
    #Currently uses Trelis 16.3, since SDK appears incompatible with 16.4
dpkg -i trelis.deb #This installs Trelis 16.3, files can be found in /opt
