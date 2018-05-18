#!/bin/bash

#DAGMC Installation
cd ~;
mkdir dagmc;
cd dagmc;
git clone https://github.com/svalinn/DAGMC;
cd DAGMC;
git checkout develop;
cd ..
mkdir bld;
mkdir install
cd bld
INSTALL_PATH=/root/dagmc/install
cmake ../DAGMC -DCMAKE_INSTALL_PREFIX=$INSTALL_PATH
make 
make install 
echo 'export PATH=$PATH:/root/dagmc/install/bin'>>/root/.bashrc;
export PATH=$PATH:/root/dagmc/install/bin;
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/dagmc/install/lib'>>/root/.bashrc;
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/dagmc/install/lib;
