#!/bin/bash
 
#CGM Installation
INSTALL_ROOT=$HOME
cd $INSTALL_ROOT
mkdir CGM
cd CGM
git clone https://bitbucket.org/fathomteam/cgm.git
mkdir bld
CGM_INSTALL_DIR=$INSTALL_ROOT/CGM/install
mkdir $CGM_INSTALL_DIR
cd bld
cmake ../cgm -DCMAKE_INSTALL_PREFIX=$CGM_INSTALL_DIR
make
make install

printf '\nConsider adding the following lines to .bashrc:\n'
printf 'export PATH=$CGM_INSTALL_DIR/bin:$PATH\n'
export PATH=$CGM_INSTALL_DIR/bin:$PATH
printf 'export LD_LIBRARY_PATH=$CGM_INSTALL_DIR/lib:$LD_LIBRARY_PATH\n'
export LD_LIBRARY_PATH=$CGM_INSTALL_DIR/lib:$LD_LIBRARY_PATH
