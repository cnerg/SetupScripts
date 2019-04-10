#!/bin/bash
 
#MOAB Installation
source install_dir.sh
mkdir $INSTALL_ROOT
cd $INSTALL_ROOT
mkdir MOAB
cd MOAB
mkdir bld
MOAB_INSTALL_DIR=$INSTALL_ROOT/MOAB/
git clone https://bitbucket.org/fathomteam/moab
cd moab
git checkout Version5.1

cd ../bld
#NOTE: If building SHARED_LIBS=OFF, turn off PYMOAB too, else turn both ON
cmake ../moab -DCMAKE_INSTALL_PREFIX=$MOAB_INSTALL_DIR \
 -DHDF5_ROOT=/usr/lib/x86_64-linux-gnu/hdf5/serial/ -DENABLE_HDF5=ON \
 -DENABLE_PYMOAB=ON -DBUILD_SHARED_LIBS=ON
make -j4
make check
make install

cd $INSTALL_ROOT
