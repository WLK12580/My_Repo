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
CMAKE_SOURCE_DIR = /home/solidworks/my_doc/libtorch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/solidworks/my_doc/libtorch/build

# Include any dependencies generated for this target.
include CMakeFiles/libtorch.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libtorch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libtorch.dir/flags.make

CMakeFiles/libtorch.dir/libtorch.cpp.o: CMakeFiles/libtorch.dir/flags.make
CMakeFiles/libtorch.dir/libtorch.cpp.o: ../libtorch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/solidworks/my_doc/libtorch/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libtorch.dir/libtorch.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libtorch.dir/libtorch.cpp.o -c /home/solidworks/my_doc/libtorch/libtorch.cpp

CMakeFiles/libtorch.dir/libtorch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libtorch.dir/libtorch.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/solidworks/my_doc/libtorch/libtorch.cpp > CMakeFiles/libtorch.dir/libtorch.cpp.i

CMakeFiles/libtorch.dir/libtorch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libtorch.dir/libtorch.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/solidworks/my_doc/libtorch/libtorch.cpp -o CMakeFiles/libtorch.dir/libtorch.cpp.s

# Object files for target libtorch
libtorch_OBJECTS = \
"CMakeFiles/libtorch.dir/libtorch.cpp.o"

# External object files for target libtorch
libtorch_EXTERNAL_OBJECTS =

libtorch: CMakeFiles/libtorch.dir/libtorch.cpp.o
libtorch: CMakeFiles/libtorch.dir/build.make
libtorch: /home/solidworks/my_install/libtorch/lib/libtorch.so
libtorch: /home/solidworks/my_install/libtorch/lib/libc10.so
libtorch: /home/solidworks/my_install/libtorch/lib/libkineto.a
libtorch: /home/solidworks/my_install/libtorch/lib/libc10.so
libtorch: CMakeFiles/libtorch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/solidworks/my_doc/libtorch/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable libtorch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libtorch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libtorch.dir/build: libtorch

.PHONY : CMakeFiles/libtorch.dir/build

CMakeFiles/libtorch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libtorch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libtorch.dir/clean

CMakeFiles/libtorch.dir/depend:
	cd /home/solidworks/my_doc/libtorch/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/solidworks/my_doc/libtorch /home/solidworks/my_doc/libtorch /home/solidworks/my_doc/libtorch/build /home/solidworks/my_doc/libtorch/build /home/solidworks/my_doc/libtorch/build/CMakeFiles/libtorch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libtorch.dir/depend

