#!/bin/bash

#MOAB Installation
INSTALL_ROUTE=$HOME
cd $INSTALL_ROUTE

apt install -y autoconf libtool make mpich libblas-dev liblapack-dev libhdf5-dev cmake

mkdir MOAB
cd MOAB
mkdir bld
mkdir install
git clone https://bitbucket.org/fathomteam/moab
cd moab
git checkout Version5.0
autoreconf -fi
cd ../bld
../moab/configure --prefix=$INSTALL_ROUTE/MOAB/install --with-hdf5=/usr/lib/x86_64-linux-gnu/hdf5/serial --enable-shared;
make -j4
make check
make install
printf 'export PATH=$PATH:%s/MOAB/install/bin' "$INSTALL_ROUTE">>$HOME/.bashrc
export PATH=$PATH:$INSTALL_ROUTE/MOAB/install/bin
printf 'export LD_LIBRARY_PATH=%s/MOAB/install/lib' "$INSTALL_ROUTE">>$HOME/.bashrc
export LD_LIBRARY_PATH=$INSTALL_ROUTE/MOAB/install/lib

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

#Trelis Installation
INSTALL_ROUTE=$HOME
cd $INSTALL_ROUTE
mkdir trelis
cd trelis
curl -1 -v --disable-epsv --ftp-skip-pasv-ip -u sstern3@wisc.edu --ftp-ssl \ --output trelis.deb    ftp://ftp.box.com/CNERG/INTERNAL/Resources/Trelis/Trelis-16.3.3-Lin64.deb > trelis.deb;
    #Replace sstern3 with username as needed; external password must be set on box
    #Currently uses Trelis 16.3, since SDK appears incompatible with 16.4
dpkg -i trelis.deb #This installs Trelis 16.3, files can be found in /opt

#Trelis SDK installation
apt-get install -y libarmadillo-dev
cd /opt/Trelis-16.3
mkdir sdk
cd sdk
curl -1 -v --disable-epsv --ftp-skip-pasv-ip -u sstern3@wisc.edu --ftp-ssl  --output trelis.deb \  ftp://ftp.box.com/CNERG/INTERNAL/Resources/Trelis/SDK/Trelis-SDK-16.0.0-Lin64.tar.gz>\trelisSDK.gz;
tar -xzf trelisSDK.gz 
cd ../bin
sudo ln -s ../sdk/bin/* .
cd ..
sudo ln -s sdk/include .

#Finally, install the actual svalinn plugin
INSTALL_ROUTE=$HOME
cd $INSTALL_ROUTE
mkdir svalinn_plugin
cd svalinn_plugin
git clone https://github.com/svalinn/DAGMC-Trelis.git
mkdir bld
cd bld
#The following line fails if the script is run not as source
cmake ../DAGMC-Trelis -DCMAKE_PREFIX_PATH=/opt/Trelis-16.3/bin -DBUILD_IGEOM=ON -DBUILD_IGEOM_TESTS=ON -DBUILD_MCNP_IMPORTER=OFF -DMOAB_DIR=$INSTALL_ROUTE/MOAB/install/lib -DDAGMC_DIR=$INSTALL_ROUTE/dagmc/install/
make
PLUGINDIR=/opt/Trelis-16.3/bin/plugins/svalinn
mkdir $PLUGINDIR
cp libsvalinn_plugin.so $PLUGINDIR
cp libiGeom.so $PLUGINDIR
cp $INSTALL_ROUTE/MOAB/install/lib/libMOAB.so.0 $PLUGINDIR
cp $INSTALL_ROUTE/dagmc/install/lib/libmakeWatertight.so $PLUGINDIR
cd ../DAGMC-Trelis
cp install.sh $PLUGINDIR
cd $PLUGINDIR/../..
bash plugins/svalinn/install.sh 
