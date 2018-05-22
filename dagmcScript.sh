#!/bin/bash

#DAGMC Installation
INSTALL_ROUTE=$HOME
cd $INSTALL_ROUTE
mkdir dagmc
cd dagmc
git clone https://github.com/svalinn/DAGMC
cd DAGMC
git checkout develop
cd ..
mkdir bld
mkdir install
cd bld
INSTALL_PATH=$INSTALL_ROUTE/dagmc/install
cmake ../DAGMC -DCMAKE_INSTALL_PREFIX=$INSTALL_PATH
make 
make install 
printf 'export PATH=$PATH:%s/dagmc/install/bin' "$INSTALL_ROUTE">>$HOME.bashrc
export PATH=$PATH:$INSTALL_ROUTE/dagmc/install/bin
printf 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:%s/dagmc/install/lib' "$INSTALL_ROUTE">>$HOME/.bashrc
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$INSTALL_ROUTE/dagmc/install/lib
