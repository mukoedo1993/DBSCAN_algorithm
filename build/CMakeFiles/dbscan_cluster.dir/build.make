# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build

# Include any dependencies generated for this target.
include CMakeFiles/dbscan_cluster.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dbscan_cluster.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dbscan_cluster.dir/flags.make

CMakeFiles/dbscan_cluster.dir/dbscan.cpp.o: CMakeFiles/dbscan_cluster.dir/flags.make
CMakeFiles/dbscan_cluster.dir/dbscan.cpp.o: ../dbscan.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dbscan_cluster.dir/dbscan.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dbscan_cluster.dir/dbscan.cpp.o -c /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/dbscan.cpp

CMakeFiles/dbscan_cluster.dir/dbscan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dbscan_cluster.dir/dbscan.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/dbscan.cpp > CMakeFiles/dbscan_cluster.dir/dbscan.cpp.i

CMakeFiles/dbscan_cluster.dir/dbscan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dbscan_cluster.dir/dbscan.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/dbscan.cpp -o CMakeFiles/dbscan_cluster.dir/dbscan.cpp.s

CMakeFiles/dbscan_cluster.dir/main.cpp.o: CMakeFiles/dbscan_cluster.dir/flags.make
CMakeFiles/dbscan_cluster.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/dbscan_cluster.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dbscan_cluster.dir/main.cpp.o -c /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/main.cpp

CMakeFiles/dbscan_cluster.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dbscan_cluster.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/main.cpp > CMakeFiles/dbscan_cluster.dir/main.cpp.i

CMakeFiles/dbscan_cluster.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dbscan_cluster.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/main.cpp -o CMakeFiles/dbscan_cluster.dir/main.cpp.s

# Object files for target dbscan_cluster
dbscan_cluster_OBJECTS = \
"CMakeFiles/dbscan_cluster.dir/dbscan.cpp.o" \
"CMakeFiles/dbscan_cluster.dir/main.cpp.o"

# External object files for target dbscan_cluster
dbscan_cluster_EXTERNAL_OBJECTS =

dbscan_cluster: CMakeFiles/dbscan_cluster.dir/dbscan.cpp.o
dbscan_cluster: CMakeFiles/dbscan_cluster.dir/main.cpp.o
dbscan_cluster: CMakeFiles/dbscan_cluster.dir/build.make
dbscan_cluster: dlib_build/libdlib.a
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libSM.so
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libICE.so
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libX11.so
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libXext.so
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libpng.so
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libz.so
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libjpeg.so
dbscan_cluster: /usr/lib/x86_64-linux-gnu/libopenblas.so
dbscan_cluster: CMakeFiles/dbscan_cluster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable dbscan_cluster"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dbscan_cluster.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dbscan_cluster.dir/build: dbscan_cluster

.PHONY : CMakeFiles/dbscan_cluster.dir/build

CMakeFiles/dbscan_cluster.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dbscan_cluster.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dbscan_cluster.dir/clean

CMakeFiles/dbscan_cluster.dir/depend:
	cd /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build /home/zcw/CPP_mukoedo_lib/DBSCAN_algorithm/build/CMakeFiles/dbscan_cluster.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dbscan_cluster.dir/depend

