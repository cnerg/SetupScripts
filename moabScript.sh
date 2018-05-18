#!/bin/bash
 
#MOAB Installation
cd ~
mkdir MOAB
cd MOAB
mkdir bld
mkdir install
git clone https://bitbucket.org/fathomteam/moab
cd moab
git checkout Version5.0
apt install autoconf libtool make mpich libblas-dev liblapack-dev libhdf5-dev cmake;
autoreconf -fi
cd ../bld
../moab/configure --prefix=/root/MOAB/install --with-hdf5=/usr/lib/x86_64-linux-gnu/hdf5/serial --enable-shared;
make -j4
make check
make install
echo 'export PATH=$PATH:/root/MOAB/install/bin'>>/root/.bashrc;
export PATH=$PATH:/root/MOAB/install/bin;
echo 'export LD_LIBRARY_PATH=/root/MOAB/install/lib'>>/root/.bashrc;
export LD_LIBRARY_PATH=/root/MOAB/install/lib;
