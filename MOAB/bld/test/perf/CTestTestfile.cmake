# CMake generated Testfile for 
# Source directory: /home/samuel/cnerg/SetupScripts/MOAB/moab/test/perf
# Build directory: /home/samuel/cnerg/SetupScripts/MOAB/bld/test/perf
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(adj_mem_time_test "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/adj_mem_time_test")
add_test(adj_time "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/adj_time")
add_test(tstt_perf_binding "/home/samuel/cnerg/SetupScripts/MOAB/bld/bin/tstt_perf_binding" "4" "B")
subdirs(point_location)
