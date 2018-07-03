/* config/MOABConfig.h.in.  Generated from configure.ac by autoheader.  */

/* Define if building universal (internal helper macro) */
/* #undef MOAB_AC_APPLE_UNIVERSAL_BUILD */

/* Configuration command along with user-specified options. */
#define MOAB_CONFIGURE_COMMAND ""

/* Configuration information. */
#define MOAB_CONFIGURE_INFO ""

/* Define to a macro mangling the given C identifier (in lower and upper
   case), which must not contain underscores, for linking with Fortran. */
#define MOAB_F77_FUNC(name,NAME)  name ## _

/* As F77_FUNC, but for C identifiers containing underscores. */
#define MOAB_F77_FUNC_(name,NAME)  name ## _

/* Define to alternate name for `main' routine that is called from a `main' in
   the Fortran libraries. */
/* #undef MOAB_F77_MAIN */

/* Define to a macro mangling the given C identifier (in lower and upper
   case), which must not contain underscores, for linking with Fortran. */
#define MOAB_FC_FUNC(name,NAME)  name ## _

/* As FC_FUNC, but for C identifiers containing underscores. */
#define MOAB_FC_FUNC_(name,NAME)  name ## _

/* Define to alternate name for `main' routine that is called from a `main' in
   the Fortran libraries. */
/* #undef MOAB_FC_MAIN */

/* Use int32_t for handles */
/* #undef MOAB_FORCE_32_BIT_HANDLES */

/* Use int64_t for handles */
/* #undef MOAB_FORCE_64_BIT_HANDLES */

/* Enable use of AHF data-structures for querying adjacency information */
/* #undef MOAB_HAVE_AHF */

/* Define if you have a BLAS library. */
/* #undef MOAB_HAVE_BLAS */

/* "Define if configured with CCM I/O support." */
/* #undef MOAB_HAVE_CCMIO */

/* Define to 1 if you have the <ccmiocore.h> header file. */
/* #undef MOAB_HAVE_CCMIOCORE_H */

/* Define to 1 if you have the <ccmioutility.h> header file. */
/* #undef MOAB_HAVE_CCMIOUTILITY_H */

/* Define to 1 if you have the <ccmio.h> header file. */
/* #undef MOAB_HAVE_CCMIO_H */

/* "Define if configured with CGM support." */
/* #undef MOAB_HAVE_CGM */

/* MOAB uses CGM configured with Facet Engine */
/* #undef MOAB_HAVE_CGM_FACET */

/* "Define if configured with CGM and Ray fire support." */
/* #undef MOAB_HAVE_CGM_FIRE_RAY */

/* MOAB uses CGM configured with OpenCascade */
/* #undef MOAB_HAVE_CGM_OCC */

/* "Define if configured with CGNS support." */
/* #undef MOAB_HAVE_CGNS */

/* Configure with tool: DAGMC */
/* #undef MOAB_HAVE_DAGMC */

/* "Define if configured with Damsel I/O format support." */
/* #undef MOAB_HAVE_DAMSEL */

/* Define to 1 if you have the <damsel.h> header file. */
/* #undef MOAB_HAVE_DAMSEL_H */

/* Define to 1 if you have the <dlfcn.h> header file. */
/* #undef MOAB_HAVE_DLFCN_H */

/* Define if configured with FBiGeom interfaces. */
/* #undef MOAB_HAVE_FBIGEOM */

/* Flag indicating whether the library will be compiled with Eigen support */
#define MOAB_HAVE_EIGEN ON

/* define if compiler has finite */
#define MOAB_HAVE_FINITE 1

/* Configure with tool: GSETS */
/* #undef MOAB_HAVE_GSETS */

/* Configure with tool: H5MTOOLS */
/* #undef MOAB_HAVE_H5MTOOLS */

/* Define if configured with HDF5 support. */
#define MOAB_HAVE_HDF5 ON

/* Define to 1 if you have the <hdf5.h> header file. */
/* #undef MOAB_HAVE_HDF5_H */

/* Define if configured with Parallel HDF5 support. */
/* #undef MOAB_HAVE_HDF5_PARALLEL */

/* Configure with tool: HEXMODOPS */
/* #undef MOAB_HAVE_HEXMODOPS */

/* Defined if configured with IEEE Floating point support */
/* #undef MOAB_HAVE_IEEEFP */

/* Define if configured with iMesh interfaces. */
#define MOAB_HAVE_IMESH ON

/* MOAB qualified HAVE_INTTYPES_H */
#define MOAB_HAVE_INTTYPES_H 1

/* define if compiler has isfinite */
/* #undef MOAB_HAVE_ISFINITE */

/* Define if you have LAPACK library. */
/* #undef MOAB_HAVE_LAPACK */

/* Define to 1 if you have the `lmpe' library (-llmpe). */
/* #undef MOAB_HAVE_LIBLMPE */

/* Define to 1 if you have the `mpe' library (-lmpe). */
/* #undef MOAB_HAVE_LIBMPE */

/* Configure with tool: MBCONVERT */
/* #undef MOAB_HAVE_MBCONVERT */

/* Configure with tool: MBCOUPLER */
/* #undef MOAB_HAVE_MBCOUPLER */

/* Configure with tool: MBCSLAM */
/* #undef MOAB_HAVE_MBCSLAM */

/* Configure with tool: MBDEPTH */
/* #undef MOAB_HAVE_MBDEPTH */

/* Configure with tool: MBMEM */
/* #undef MOAB_HAVE_MBMEM */

/* Configure with tool: MBMERGE */
/* #undef MOAB_HAVE_MBMERGE */

/* Configure with tool: MBPART */
/* #undef MOAB_HAVE_MBPART */

/* Configure with tool: MBQUALITY */
/* #undef MOAB_HAVE_MBQUALITY */

/* Configure with tool: MBSIZE */
/* #undef MOAB_HAVE_MBSIZE */

/* Configure with tool: MBSKIN */
/* #undef MOAB_HAVE_MBSKIN */

/* Configure with tool: MBSURFPLOT */
/* #undef MOAB_HAVE_MBSURFPLOT */

/* Configure with tool: MBTAGPROP */
/* #undef MOAB_HAVE_MBTAGPROP */

/* Configure with tool: MBUMR */
/* #undef MOAB_HAVE_MBUMR */

/* Configure with tool: MCNPMIT */
/* #undef MOAB_HAVE_MCNPMIT */

/* Define to 1 if you have the <memory.h> header file. */
#define MOAB_HAVE_MEMORY_H 1

/* Define if configured with Metis partitioner support */
/* #undef MOAB_HAVE_METIS */

/* Define if configured with support for parallel computations. */
/* #undef MOAB_HAVE_MPI */

/* "Define if configured with NetCDF support." */
/* #undef MOAB_HAVE_NETCDF */

/* Define to 1 if you have the <netcdf.h> header file. */
/* #undef MOAB_HAVE_NETCDF_H */

/* Define if configured with ParMetis partitioner support */
/* #undef MOAB_HAVE_PARMETIS */

/* "Define if configured with Parallel NetCDF support." */
/* #undef MOAB_HAVE_PNETCDF */

/* Define to 1 if you have the <pnetcdf.h> header file. */
/* #undef MOAB_HAVE_PNETCDF_H */

/* System provides ptrdiff_t typedef */
#define MOAB_HAVE_PTRDIFF_T 8

/* Configure with tool: REFINER */
/* #undef MOAB_HAVE_REFINER */

/* "Define if configured with Parallel Scotch library partitioning support."
   */
/* #undef MOAB_HAVE_SCOTCH */

/* System provides size_t typedef */
#define MOAB_HAVE_SIZE_T 8

/* Configure with tool: SPHEREDECOMP */
/* #undef MOAB_HAVE_SPHEREDECOMP */

/* MOAB qualified HAVE_STDDEF_H */
#define MOAB_HAVE_STDDEF_H 1

/* MOAB qualified HAVE_STDINT_H */
#define MOAB_HAVE_STDINT_H 1

/* define if compiler has std::isfinite */
/* #undef MOAB_HAVE_STDISFINITE */

/* MOAB qualified HAVE_STDLIB_H */
#define MOAB_HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
/* #undef MOAB_HAVE_STRINGS_H */

/* Define to 1 if you have the <string.h> header file. */
/* #undef MOAB_HAVE_STRING_H */

/* Define to 1 if you have the <sys/stat.h> header file. */
/* #undef MOAB_HAVE_SYS_STAT_H */

/* MOAB qualified HAVE_SYS_TYPES_H */
#define MOAB_HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
/* #undef MOAB_HAVE_UNISTD_H */

/* Specify if unordered map is available */
/* #undef MOAB_HAVE_UNORDERED_MAP */

/* Specify if unordered set is available */
/* #undef MOAB_HAVE_UNORDERED_SET */

/* Defined if configured with Valgrind support */
/* #undef MOAB_HAVE_VALGRIND */

/* Define if vsnprintf is available. */
/* #undef MOAB_HAVE_VSNPRINTF */

/* "Define if configured with VTK I/O library support." */
/* #undef MOAB_HAVE_VTK */

/* Configure with tool: VTKMOABREADER */
/* #undef MOAB_HAVE_VTKMOABREADER */

/* "Define if configured with Zoltan library partitioning support." */
/* #undef MOAB_HAVE_ZOLTAN */

/* MPICH_IGNORE_CXX_SEEK is not sufficient to avoid conflicts */
/* #undef MOAB_MPI_CXX_CONFLICT */

/* Do not use template vector insertions */
/* #undef MOAB_NO_VECTOR_TEMPLATE_INSERT */

/* Use old-style C++ std::count calls */
/* #undef MOAB_OLD_STD_COUNT */

/* Name of package */
#define MOAB_PACKAGE ""

/* Define to the address where bug reports for this package should be sent. */
#define MOAB_PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define MOAB_PACKAGE_NAME ""

/* Define to the full name and version of this package. */
#define MOAB_PACKAGE_STRING ""

/* Define to the one symbol short name of this package. */
#define MOAB_PACKAGE_TARNAME ""

/* Define to the home page for this package. */
#define MOAB_PACKAGE_URL ""

/* Define to the version of this package. */
#define MOAB_PACKAGE_VERSION 

/* "Value of C SEEK_CUR" */
/* #undef MOAB_SEEK_CUR */

/* "Value of C SEEK_END" */
/* #undef MOAB_SEEK_END */

/* "Value of C SEEK_SET" */
/* #undef MOAB_SEEK_SET */

/* The size of `long', as computed by sizeof. */
/* #undef MOAB_SIZEOF_LONG */

/* The size of `unsigned long', as computed by sizeof. */
/* #undef MOAB_SIZEOF_UNSIGNED_LONG */

/* The size of `void *', as computed by sizeof. */
/* #undef MOAB_SIZEOF_VOID_P */

/* Define to 1 if you have the ANSI C header files. */
/* #undef MOAB_STDC_HEADERS */

/* Use template function specializations */
/* #undef MOAB_TEMPLATE_FUNC_SPECIALIZATION */

/* Use template class specializations */
/* #undef MOAB_TEMPLATE_SPECIALIZATION */

/* Unordered map namespace */
/* #undef MOAB_UNORDERED_MAP_NS */

/* MOAB Version */
#define MOAB_VERSION "5.0.1"

/* MOAB Major Version */
#define MOAB_VERSION_MAJOR 5

/* MOAB Minor Version */
#define MOAB_VERSION_MINOR 0

/* MOAB Patch Level */
#define MOAB_VERSION_PATCH 1

/* MOAB Version String */
#define MOAB_VERSION_STRING "MOAB 5.0.1"

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
#  undef WORDS_BIGENDIAN
# endif
#endif

/* Define to 1 if the X Window System is missing or not being used. */
/* #undef MOAB_X_DISPLAY_MISSING */
