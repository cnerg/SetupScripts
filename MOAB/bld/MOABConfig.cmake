# Config file for MOAB; use the CMake find_package() function to pull this into
# your own CMakeLists.txt file.
#
# This file defines the following variables:
# MOAB_FOUND        - boolean indicating that MOAB is found
# MOAB_INCLUDE_DIRS - include directories from which to pick up MOAB includes
# MOAB_LIBRARIES    - libraries need to link to MOAB; use this in target_link_libraries for MOAB-dependent targets
# MOAB_CXX, MOAB_CC, MOAB_F77, MOAB_FC - compilers used to compile MOAB
# MOAB_CXXFLAGS, MOAB_CCFLAGS, MOAB_FFLAGS, MOAB_FCFLAGS - compiler flags used to compile MOAB; possibly need to use these in add_definitions or CMAKE_<LANG>_FLAGS_<MODE> 

set(MOAB_FOUND 1)

set(MOAB_CC /usr/bin/cc)
set(MOAB_CXX /usr/bin/c++)
set(MOAB_FC /usr/bin/gfortran)
set(MOAB_F77 /usr/bin/gfortran)
# Compiler flags used by MOAB
set(MOAB_CFLAGS "-O3 -DNDEBUG")
set(MOAB_CXXFLAGS "-O3 -DNDEBUG")
set(MOAB_FCFLAGS "-funroll-all-loops -fno-f2c -O2")
set(MOAB_FFLAGS "-funroll-all-loops -fno-f2c -O2")

set(MOAB_BUILT_SHARED ON)
set(MOAB_USE_MPI OFF)
set(MPI_DIR "")
set(MOAB_USE_HDF5 ON)
set(MOAB_USE_HDF5_PARALLEL OFF)
set(HDF5_DIR "/usr/lib/x86_64-linux-gnu/hdf5/serial")
set(MOAB_USE_ZLIB OFF)
set(ZLIB_DIR "")
set(MOAB_USE_SZIP OFF)
set(SZIP_DIR "")
set(MOAB_USE_NETCDF OFF)
set(NETCDF_DIR "")
set(MOAB_USE_PNETCDF OFF)
set(PNETCDF_DIR "")
set(MOAB_USE_METIS OFF)
set(METIS_DIR "")
set(MOAB_USE_ZOLTAN OFF)
set(ZOLTAN_DIR "")
set(MOAB_USE_BLAS )
set(BLAS_LIBRARIES "")
set(MOAB_USE_LAPACK )
set(LAPACK_LIBRARIES "")
set(MOAB_USE_EIGEN )
set(EIGEN_INCLUDE_DIR "")

set(MOAB_MESH_DIR "/home/samuel/cnerg/SetupScripts/MOAB/moab/MeshFiles/unittest")

set(ENABLE_IGEOM OFF)
set(CGM_DIR "")
set(ENABLE_IMESH ON)
set(ENABLE_IREL OFF)
set(ENABLE_FBIGEOM OFF)

set (MOAB_PACKAGE_LIBS "   /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5hl_fortran.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_fortran.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libm.so      " )
string(STRIP "${MOAB_PACKAGE_LIBS}" MOAB_PACKAGE_LIBS)
set(MOAB_PACKAGE_LIBS_LIST ${MOAB_PACKAGE_LIBS})
separate_arguments(MOAB_PACKAGE_LIBS_LIST)
list(REMOVE_DUPLICATES MOAB_PACKAGE_LIBS_LIST)
set(MOAB_PACKAGE_LIBS "${MOAB_PACKAGE_LIBS_LIST}")
set (MOAB_PACKAGE_INCLUDES "   /usr/lib/x86_64-linux-gnu/hdf5/serial/include    " )
string(STRIP "${MOAB_PACKAGE_INCLUDES}" MOAB_PACKAGE_INCLUDES)
separate_arguments(MOAB_PACKAGE_INCLUDES)
list(REMOVE_DUPLICATES MOAB_PACKAGE_INCLUDES)

# Library and include defs
get_filename_component(MOAB_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

if(NOT TARGET MOAB AND NOT MOAB_BINARY_DIR)
  include("${MOAB_CMAKE_DIR}/MOABTargets.cmake")
endif()

# Target information
if(MOAB_USE_HDF5)
  if(EXISTS "/usr/lib/x86_64-linux-gnu/hdf5/serial/share/cmake/hdf5/hdf5-config.cmake")
    include(/usr/lib/x86_64-linux-gnu/hdf5/serial/share/cmake/hdf5/hdf5-config.cmake)
  endif()
endif()

set(MOAB_LIBRARY_DIRS "/home/samuel/cnerg/SetupScripts/MOAB/install/lib")
set(MOAB_INCLUDE_DIRS "/home/samuel/cnerg/SetupScripts/MOAB/install/include")
set(MOAB_LIBS "-lMOAB")
set(MOAB_LIBRARIES "-L/home/samuel/cnerg/SetupScripts/MOAB/install/lib ${MOAB_LIBS} ${MOAB_PACKAGE_LIBS}")
if(ENABLE_IMESH)
  set(MOAB_LIBS "-liMesh ${MOAB_LIBS}")
  set(IMESH_LIBRARIES "-L/home/samuel/cnerg/SetupScripts/MOAB/install/lib ${MOAB_LIBS} ${MOAB_PACKAGE_LIBS}")
endif(ENABLE_IMESH)
if(ENABLE_FBIGEOM)
  set(MOAB_LIBS "-lFBiGeom ${MOAB_LIBS}")
  set(FBIGEOM_LIBRARIES "-L/home/samuel/cnerg/SetupScripts/MOAB/install/lib ${MOAB_LIBS} ${MOAB_PACKAGE_LIBS}")
endif(ENABLE_FBIGEOM)
if(ENABLE_IREL)
  set(MOAB_LIBS "-liRel ${MOAB_LIBS}")
  set(IREL_LIBRARIES "-L/home/samuel/cnerg/SetupScripts/MOAB/install/lib ${MOAB_LIBS} ${MOAB_PACKAGE_LIBS}")
endif(ENABLE_IREL)

set(DAGMC_LIBRARIES "-L/home/samuel/cnerg/SetupScripts/MOAB/install/lib -ldagmc -lMOAB ${MOAB_PACKAGE_LIBS}")

