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

#Trelis Installation
cd ~
mkdir trelis
cd trelis
curl -1 -v --disable-epsv --ftp-skip-pasv-ip -u sstern3@wisc.edu --ftp-ssl \ --output trelis.deb    ftp://ftp.box.com/CNERG/INTERNAL/Resources/Trelis/Trelis-16.3.3-Lin64.deb > trelis.deb;
    #Replace sstern3 with username as needed; external password must be set on box
    #Currently uses Trelis 16.3, since SDK appears incompatible with 16.4
dpkg -i trelis.deb #This installs Trelis 16.3, files can be found in /opt

#Trelis SDK installation
apt-get install libarmadillo-dev
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
cd ~
mkdir svalinn_plugin
cd svalinn_plugin
git clone https://github.com/svalinn/DAGMC-Trelis.git
mkdir bld
cd bld
#This step fails if the script is run not as source
cmake ../DAGMC-Trelis -DCMAKE_PREFIX_PATH=/opt/Trelis-16.3/bin -DBUILD_IGEOM=ON -DBUILD_IGEOM_TESTS=ON -DBUILD_MCNP_IMPORTER=OFF -DMOAB_DIR=/root/MOAB/install/lib -DDAGMC_DIR=/root/dagmc/DAGMC
#Up through here works typed in manually
#make #This command results in a bug claiming that the system can’t find #“make_watertight/MakeWatertight.hpp”. Maybe I need to set some sharing setting on with #DAGMC, like with MOAB. 

