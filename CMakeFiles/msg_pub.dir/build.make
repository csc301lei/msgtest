# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/zero/msgtest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zero/msgtest

# Include any dependencies generated for this target.
include CMakeFiles/msg_pub.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/msg_pub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/msg_pub.dir/flags.make

CMakeFiles/msg_pub.dir/msg_pub.cpp.o: CMakeFiles/msg_pub.dir/flags.make
CMakeFiles/msg_pub.dir/msg_pub.cpp.o: msg_pub.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zero/msgtest/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/msg_pub.dir/msg_pub.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/msg_pub.dir/msg_pub.cpp.o -c /home/zero/msgtest/msg_pub.cpp

CMakeFiles/msg_pub.dir/msg_pub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msg_pub.dir/msg_pub.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zero/msgtest/msg_pub.cpp > CMakeFiles/msg_pub.dir/msg_pub.cpp.i

CMakeFiles/msg_pub.dir/msg_pub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msg_pub.dir/msg_pub.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zero/msgtest/msg_pub.cpp -o CMakeFiles/msg_pub.dir/msg_pub.cpp.s

CMakeFiles/msg_pub.dir/msg_pub.cpp.o.requires:
.PHONY : CMakeFiles/msg_pub.dir/msg_pub.cpp.o.requires

CMakeFiles/msg_pub.dir/msg_pub.cpp.o.provides: CMakeFiles/msg_pub.dir/msg_pub.cpp.o.requires
	$(MAKE) -f CMakeFiles/msg_pub.dir/build.make CMakeFiles/msg_pub.dir/msg_pub.cpp.o.provides.build
.PHONY : CMakeFiles/msg_pub.dir/msg_pub.cpp.o.provides

CMakeFiles/msg_pub.dir/msg_pub.cpp.o.provides.build: CMakeFiles/msg_pub.dir/msg_pub.cpp.o

# Object files for target msg_pub
msg_pub_OBJECTS = \
"CMakeFiles/msg_pub.dir/msg_pub.cpp.o"

# External object files for target msg_pub
msg_pub_EXTERNAL_OBJECTS =

msg_pub: CMakeFiles/msg_pub.dir/msg_pub.cpp.o
msg_pub: CMakeFiles/msg_pub.dir/build.make
msg_pub: CMakeFiles/msg_pub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable msg_pub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msg_pub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/msg_pub.dir/build: msg_pub
.PHONY : CMakeFiles/msg_pub.dir/build

CMakeFiles/msg_pub.dir/requires: CMakeFiles/msg_pub.dir/msg_pub.cpp.o.requires
.PHONY : CMakeFiles/msg_pub.dir/requires

CMakeFiles/msg_pub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/msg_pub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/msg_pub.dir/clean

CMakeFiles/msg_pub.dir/depend:
	cd /home/zero/msgtest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zero/msgtest /home/zero/msgtest /home/zero/msgtest /home/zero/msgtest /home/zero/msgtest/CMakeFiles/msg_pub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/msg_pub.dir/depend
