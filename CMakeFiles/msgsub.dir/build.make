# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zero/msgtest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zero/msgtest

# Include any dependencies generated for this target.
include CMakeFiles/msgsub.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/msgsub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/msgsub.dir/flags.make

CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o: CMakeFiles/msgsub.dir/flags.make
CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o: MessageSubscriber.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zero/msgtest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o -c /home/zero/msgtest/MessageSubscriber.cpp

CMakeFiles/msgsub.dir/MessageSubscriber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msgsub.dir/MessageSubscriber.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zero/msgtest/MessageSubscriber.cpp > CMakeFiles/msgsub.dir/MessageSubscriber.cpp.i

CMakeFiles/msgsub.dir/MessageSubscriber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msgsub.dir/MessageSubscriber.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zero/msgtest/MessageSubscriber.cpp -o CMakeFiles/msgsub.dir/MessageSubscriber.cpp.s

CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.requires:

.PHONY : CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.requires

CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.provides: CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.requires
	$(MAKE) -f CMakeFiles/msgsub.dir/build.make CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.provides.build
.PHONY : CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.provides

CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.provides.build: CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o


CMakeFiles/msgsub.dir/fatal.cpp.o: CMakeFiles/msgsub.dir/flags.make
CMakeFiles/msgsub.dir/fatal.cpp.o: fatal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zero/msgtest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/msgsub.dir/fatal.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/msgsub.dir/fatal.cpp.o -c /home/zero/msgtest/fatal.cpp

CMakeFiles/msgsub.dir/fatal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msgsub.dir/fatal.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zero/msgtest/fatal.cpp > CMakeFiles/msgsub.dir/fatal.cpp.i

CMakeFiles/msgsub.dir/fatal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msgsub.dir/fatal.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zero/msgtest/fatal.cpp -o CMakeFiles/msgsub.dir/fatal.cpp.s

CMakeFiles/msgsub.dir/fatal.cpp.o.requires:

.PHONY : CMakeFiles/msgsub.dir/fatal.cpp.o.requires

CMakeFiles/msgsub.dir/fatal.cpp.o.provides: CMakeFiles/msgsub.dir/fatal.cpp.o.requires
	$(MAKE) -f CMakeFiles/msgsub.dir/build.make CMakeFiles/msgsub.dir/fatal.cpp.o.provides.build
.PHONY : CMakeFiles/msgsub.dir/fatal.cpp.o.provides

CMakeFiles/msgsub.dir/fatal.cpp.o.provides.build: CMakeFiles/msgsub.dir/fatal.cpp.o


# Object files for target msgsub
msgsub_OBJECTS = \
"CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o" \
"CMakeFiles/msgsub.dir/fatal.cpp.o"

# External object files for target msgsub
msgsub_EXTERNAL_OBJECTS =

msgsub: CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o
msgsub: CMakeFiles/msgsub.dir/fatal.cpp.o
msgsub: CMakeFiles/msgsub.dir/build.make
msgsub: CMakeFiles/msgsub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zero/msgtest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable msgsub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msgsub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/msgsub.dir/build: msgsub

.PHONY : CMakeFiles/msgsub.dir/build

CMakeFiles/msgsub.dir/requires: CMakeFiles/msgsub.dir/MessageSubscriber.cpp.o.requires
CMakeFiles/msgsub.dir/requires: CMakeFiles/msgsub.dir/fatal.cpp.o.requires

.PHONY : CMakeFiles/msgsub.dir/requires

CMakeFiles/msgsub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/msgsub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/msgsub.dir/clean

CMakeFiles/msgsub.dir/depend:
	cd /home/zero/msgtest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zero/msgtest /home/zero/msgtest /home/zero/msgtest /home/zero/msgtest /home/zero/msgtest/CMakeFiles/msgsub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/msgsub.dir/depend

