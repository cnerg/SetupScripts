#!/bin/bash

#DAGMC Directory Setup
source install_dir.sh
cd $INSTALL_ROOT
cd DAG-mcnp
mkdir bld

DAGMC_INSTALL_DIR=$INSTALL_ROOT/DAG-mcnp/install
MOAB_CONFIG_DIR=$INSTALL_ROOT/MOAB/lib/cmake/MOAB
mkdir $DAGMC_INSTALL_DIR

#Building/Installation
cd $INSTALL_ROOT/DAG-mcnp/bld
cmake ../DAGMC -DCMAKE_INSTALL_PREFIX=$DAGMC_INSTALL_DIR \
 -DMOAB_CMAKE_CONFIG=$MOAB_CONFIG_DIR \
 -DMOAB_DIR=$INSTALL_ROOT/MOAB \
 -DBUILD_MCNP6=ON
make 
make install
run-parts ../install/tests

cd $INSTALL_ROOT
