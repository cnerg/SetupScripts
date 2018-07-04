#!/bin/bash
 
#Finally, install the actual svalinn plugin
INSTALL_ROOT=$HOME/cnerg
cd $INSTALL_ROUTE
mkdir svalinn_plugin
cd svalinn_plugin
git clone https://github.com/svalinn/DAGMC-Trelis.git
mkdir bld
cd bld
#The following line fails if the script is run not as source
cmake ../DAGMC-Trelis -DCMAKE_PREFIX_PATH=/opt/Trelis-16.3/bin\
 -DBUILD_IGEOM=ON -DBUILD_IGEOM_TESTS=ON -DBUILD_MCNP_IMPORTER=OFF\
 -DMOAB_DIR=$INSTALL_ROUTE/MOAB/install/lib -DDAGMC_DIR=$INSTALL_ROUTE/dagmc/install/
make
PLUGINDIR=/opt/Trelis-16.3/bin/plugins/svalinn
mkdir $PLUGINDIR
cp libsvalinn_plugin.so $PLUGINDIR
cp libiGeom.so $PLUGINDIR
cp $INSTALL_ROUTE/MOAB/install/lib/libMOAB.so.5 $PLUGINDIR
cp $INSTALL_ROUTE/dagmc/install/lib/libmakeWatertight.so $PLUGINDIR
cd ../DAGMC-Trelis
cp install.sh $PLUGINDIR
cd $PLUGINDIR/../..
bash plugins/svalinn/install.sh

cd $INSTALL_ROOT
