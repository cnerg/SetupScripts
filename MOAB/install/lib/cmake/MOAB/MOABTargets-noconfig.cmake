#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MOAB" for configuration ""
set_property(TARGET MOAB APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MOAB PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libMOAB.so.5.0.1"
  IMPORTED_SONAME_NOCONFIG "libMOAB.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS MOAB )
list(APPEND _IMPORT_CHECK_FILES_FOR_MOAB "${_IMPORT_PREFIX}/lib/libMOAB.so.5.0.1" )

# Import target "iMesh" for configuration ""
set_property(TARGET iMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(iMesh PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libiMesh.so.5.0.1"
  IMPORTED_SONAME_NOCONFIG "libiMesh.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS iMesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_iMesh "${_IMPORT_PREFIX}/lib/libiMesh.so.5.0.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
