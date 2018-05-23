#!/bin/bash

#DAGMC Installation
INSTALL_ROOT=$HOME
cd $INSTALL_ROOT
mkdir dagmc
cd dagmc
git clone https://github.com/svalinn/DAGMC
cd DAGMC
git checkout develop
cd ..
mkdir bld
mkdir install
cd bld
cmake ../DAGMC -DCMAKE_INSTALL_PREFIX=$INSTALL_ROOT/dagmc/install
make 
make install 
printf 'export PATH=$PATH:$INSTALL_ROOT/dagmc/install/bin'>>$HOME.bashrc
export PATH=$PATH:$INSTALL_ROOT/dagmc/install/bin
printf 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$INSTALL_ROOT/dagmc/install/lib'>>$HOME/.bashrc
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$INSTALL_ROOT/dagmc/install/lib
