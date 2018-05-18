#!/bin/bash
 
#Finally, install the actual svalinn plugin
cd ~
mkdir svalinn_plugin
cd svalinn_plugin
git clone https://github.com/svalinn/DAGMC-Trelis.git
mkdir bld
cd bld
#Up through here works in automatic bash script
cmake ../DAGMC-Trelis -DCMAKE_PREFIX_PATH=/opt/Trelis-16.3/bin -DBUILD_IGEOM=ON -DBUILD_IGEOM_TESTS=ON -DBUILD_MCNP_IMPORTER=OFF -DMOAB_DIR=/root/MOAB/install/lib -DDAGMC_DIR=/root/dagmc/DAGMC/
#Up through here works typed in manually
#make #This command results in a bug claiming that the system can’t find #“make_watertight/MakeWatertight.hpp”. Maybe I need to set some sharing setting on with #DAGMC, like with MOAB. 

