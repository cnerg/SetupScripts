#!/bin/bash
 
#mcnp2cad Installation
INSTALL_ROOT=$HOME
cd $INSTALL_ROOT
INSTALL_ROOT=$HOME
cd $INSTALL_ROOT
mkdir MCNP2CAD
cd MCNP2CAD
git clone https://github.com/SamuelStern/mcnp2cad.git
cd mcnp2cad
make CGM_BASE_DIR=~/cgm/install
