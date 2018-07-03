# CMake generated Testfile for 
# Source directory: /home/samuel/cnerg/SetupScripts/MOAB/moab/test/h5file
# Build directory: /home/samuel/cnerg/SetupScripts/MOAB/bld/test/h5file
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(h5file_test "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/h5file_test")
set_tests_properties(h5file_test PROPERTIES  TIMEOUT "120")
add_test(h5legacy "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/h5legacy")
set_tests_properties(h5legacy PROPERTIES  TIMEOUT "120")
add_test(h5varlen "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/h5varlen")
set_tests_properties(h5varlen PROPERTIES  TIMEOUT "120")
add_test(h5sets_test "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/h5sets_test")
set_tests_properties(h5sets_test PROPERTIES  TIMEOUT "120")
add_test(h5regression "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/h5regression")
set_tests_properties(h5regression PROPERTIES  TIMEOUT "120")
add_test(h5partial "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/h5partial")
set_tests_properties(h5partial PROPERTIES  TIMEOUT "120")
add_test(h5portable "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/h5portable")
set_tests_properties(h5portable PROPERTIES  TIMEOUT "120")
