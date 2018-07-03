IMESH_CXXFLAGS = -O3 -DNDEBUG 
IMESH_CFLAGS = -O3 -DNDEBUG
IMESH_LDFLAGS =  
IMESH_FC = /usr/bin/gfortran
IMESH_FCFLAGS = 
FC_DEFINE = 
IMESH_FCDEFS = 

IMESH_CPPFLAGS =  -pedantic -fpic -Wall -pipe -Wno-long-long -Wextra -Wno-cast-align -Wsign-compare -Wpointer-arith -Wformat -Wformat-security -Wunused-parameter -fstack-protector-all -mtune=native -fpermissive -Wno-ignored-attributes -Wno-variadic-macros -Wno-deprecated-declarations -Wno-unused-local-typedefs -I/usr/include/eigen3 -I$(IMESH_INCLUDEDIR) $(IMESH_INCLUDEDIR2)

# This definition is deprecated; use IMESH_CPPFLAGS instead
IMESH_INCLUDES = $(IMESH_CPPFLAGS)
HAVE_MESQUITE = 

ifeq (,yes)
include 
IMESH_INCLUDES += $(IGEOM_INCLUDES)
endif

ifeq ($(HAVE_MESQUITE),yes)
MSQ_LIBS = -L/src/mesquite/.libs -lmbmesquite
MSQ_INCLUDES = -I/src/mesquite/include \
	-I/src/mesquite/include \
	-I/src/mesquite/Mesh \
	-I/src/mesquite/Control \
	-I/src/mesquite/Wrappers \
	-I/src/mesquite/MappingFunction \
	-I/src/mesquite/MappingFunction/Lagrange \
	-I/src/mesquite/MappingFunction/Linear \
	-I/src/mesquite/Misc \
	-I/src/mesquite/ObjectiveFunction \
	-I/src/mesquite/QualityAssessor \
	-I/src/mesquite/QualityImprover \
	-I/src/mesquite/QualityImprover/OptSolvers \
	-I/src/mesquite/QualityImprover/Relaxation \
	-I/src/mesquite/QualityMetric \
	-I/src/mesquite/QualityMetric/Debug \
	-I/src/mesquite/QualityMetric/Shape \
	-I/src/mesquite/QualityMetric/Smoothness \
	-I/src/mesquite/QualityMetric/TMP \
	-I/src/mesquite/QualityMetric/Untangle \
	-I/src/mesquite/QualityMetric/Volume \
	-I/src/mesquite/TargetCalculator \
	-I/src/mesquite/TargetMetric \
	-I/src/mesquite/TargetMetric/Misc \
	-I/src/mesquite/TargetMetric/Shape \
	-I/src/mesquite/TargetMetric/ShapeOrient \
	-I/src/mesquite/TargetMetric/ShapeSize \
	-I/src/mesquite/TargetMetric/ShapeSizeOrient \
	-I/src/mesquite/TargetMetric/Size \
	-I/src/mesquite/TargetMetric/Untangle \
	-I/itaps/mesquite

IMESH_INCLUDES += -I/itaps/mesquite ${MSQ_INCLUDES}
IMSQ_LIBS = -L/itaps/mesquite/.libs -lmbmsqitaps
endif

IMESH_LIBS = $(IMESH_LDFLAGS) -L$(MOAB_LIBDIR) \
             -L$(IMESH_LIBDIR) -liMesh ${IMSQ_LIBS} -lMOAB ${MSQ_LIBS} ${IGEOM_LIBS} \
                 \
               \
               \
                \
              

IMESH_INCLUDEDIR = /home/samuel/cnerg/SetupScripts/MOAB/moab
IMESH_INCLUDEDIR2 = -I/home/samuel/cnerg/SetupScripts/MOAB/bld -I/home/samuel/cnerg/SetupScripts/MOAB/moab/.. -I/home/samuel/cnerg/SetupScripts/MOAB/bld/.. -I/src -I/home/samuel/cnerg/SetupScripts/MOAB/moab/../../src
IMESH_LIBDIR = /home/samuel/cnerg/SetupScripts/MOAB/bld/.libs
MOAB_LIBDIR = /src/.libs
