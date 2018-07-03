# The values below are for a copy of MOAB used directly
# from its build directory. These values will be overridden below
# for installed copies of MOAB.

# Feature list
MOAB_MPI_ENABLED = 
MOAB_FORTRAN_ENABLED = ON
MOAB_HDF5_ENABLED = 
MOAB_NETCDF_ENABLED = 
MOAB_PNETCDF_ENABLED = 
MOAB_IGEOM_ENABLED = 
MOAB_IMESH_ENABLED = 
MOAB_IREL_ENABLED = 
MOAB_FBIGEOM_ENABLED = 
MOAB_MESQUITE_ENABLED = 

# Library and Include paths
MOAB_LIBDIR = /home/samuel/cnerg/SetupScripts/MOAB/bld/src/.libs
MOAB_INCLUDES = -I/home/samuel/cnerg/SetupScripts/MOAB/moab/src \
                -I/home/samuel/cnerg/SetupScripts/MOAB/bld/src \
                -I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/oldinc \
                -I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/verdict \
                -I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/parallel \
                -I/home/samuel/cnerg/SetupScripts/MOAB/bld/src/parallel \
                -I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/LocalDiscretization \
                -I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/RefineMesh

ifeq ($(MOAB_IGEOM_ENABLED),yes)
include 
MOAB_INCLUDES += $(IGEOM_INCLUDES)
endif

ifeq ($(MOAB_MESQUITE_ENABLED),yes)
MSQ_LIBS = -L/home/samuel/cnerg/SetupScripts/MOAB/bld/src/mesquite/.libs -lmbmesquite
MSQ_INCLUDES = -I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/include \
	-I/home/samuel/cnerg/SetupScripts/MOAB/bld/src/mesquite/include \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/Mesh \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/Control \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/Wrappers \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/MappingFunction \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/MappingFunction/Lagrange \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/MappingFunction/Linear \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/Misc \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/ObjectiveFunction \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityAssessor \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityImprover \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityImprover/OptSolvers \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityImprover/Relaxation \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityMetric \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityMetric/Debug \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityMetric/Shape \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityMetric/Smoothness \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityMetric/TMP \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityMetric/Untangle \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/QualityMetric/Volume \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetCalculator \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric/Misc \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric/Shape \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric/ShapeOrient \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric/ShapeSize \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric/ShapeSizeOrient \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric/Size \
	-I/home/samuel/cnerg/SetupScripts/MOAB/moab/src/mesquite/TargetMetric/Untangle

MOAB_INCLUDES += ${MSQ_INCLUDES}
endif

MOAB_INCLUDES += 

MOAB_CPPFLAGS =  -pedantic -fpic -Wall -pipe -Wno-long-long -Wextra -Wno-cast-align -Wsign-compare -Wpointer-arith -Wformat -Wformat-security -Wunused-parameter -fstack-protector-all -mtune=native -fpermissive -Wno-ignored-attributes -Wno-variadic-macros -Wno-deprecated-declarations -Wno-unused-local-typedefs -I/usr/include/eigen3 
MOAB_CXXFLAGS = -O3 -DNDEBUG 
MOAB_CFLAGS = -O3 -DNDEBUG 
MOAB_FFLAGS = -funroll-all-loops -fno-f2c -O2
MOAB_FCFLAGS = 
MOAB_LDFLAGS =   

MOAB_EXT_LIBS =            
MOAB_LIBS_LINK = ${MOAB_LDFLAGS} -L${MOAB_LIBDIR} -lMOAB ${MSQ_LIBS} $(MOAB_EXT_LIBS) 
DAGMC_LIBS_LINK = ${MOAB_LDFLAGS} -L${MOAB_LIBDIR}  -lMOAB ${MSQ_LIBS} $(MOAB_EXT_LIBS)

MOAB_CXX = /usr/bin/c++
MOAB_CC  = /usr/bin/cc
MOAB_FC  = /usr/bin/gfortran
MOAB_F77  = /usr/bin/gfortran

# Override MOAB_LIBDIR and MOAB_INCLUDES from above with the correct
# values for the installed MOAB.

