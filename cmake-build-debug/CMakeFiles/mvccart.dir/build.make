# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/fuadshah/Desktop/CODE9/MVCCART

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mvccart.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mvccart.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mvccart.dir/flags.make

CMakeFiles/mvccart.dir/main.cpp.o: CMakeFiles/mvccart.dir/flags.make
CMakeFiles/mvccart.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mvccart.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mvccart.dir/main.cpp.o -c /Users/fuadshah/Desktop/CODE9/MVCCART/main.cpp

CMakeFiles/mvccart.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mvccart.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fuadshah/Desktop/CODE9/MVCCART/main.cpp > CMakeFiles/mvccart.dir/main.cpp.i

CMakeFiles/mvccart.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mvccart.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fuadshah/Desktop/CODE9/MVCCART/main.cpp -o CMakeFiles/mvccart.dir/main.cpp.s

CMakeFiles/mvccart.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/mvccart.dir/main.cpp.o.requires

CMakeFiles/mvccart.dir/main.cpp.o.provides: CMakeFiles/mvccart.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/mvccart.dir/build.make CMakeFiles/mvccart.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/mvccart.dir/main.cpp.o.provides

CMakeFiles/mvccart.dir/main.cpp.o.provides.build: CMakeFiles/mvccart.dir/main.cpp.o


CMakeFiles/mvccart.dir/art.c.o: CMakeFiles/mvccart.dir/flags.make
CMakeFiles/mvccart.dir/art.c.o: ../art.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mvccart.dir/art.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mvccart.dir/art.c.o   -c /Users/fuadshah/Desktop/CODE9/MVCCART/art.c

CMakeFiles/mvccart.dir/art.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mvccart.dir/art.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/fuadshah/Desktop/CODE9/MVCCART/art.c > CMakeFiles/mvccart.dir/art.c.i

CMakeFiles/mvccart.dir/art.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mvccart.dir/art.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/fuadshah/Desktop/CODE9/MVCCART/art.c -o CMakeFiles/mvccart.dir/art.c.s

CMakeFiles/mvccart.dir/art.c.o.requires:

.PHONY : CMakeFiles/mvccart.dir/art.c.o.requires

CMakeFiles/mvccart.dir/art.c.o.provides: CMakeFiles/mvccart.dir/art.c.o.requires
	$(MAKE) -f CMakeFiles/mvccart.dir/build.make CMakeFiles/mvccart.dir/art.c.o.provides.build
.PHONY : CMakeFiles/mvccart.dir/art.c.o.provides

CMakeFiles/mvccart.dir/art.c.o.provides.build: CMakeFiles/mvccart.dir/art.c.o


# Object files for target mvccart
mvccart_OBJECTS = \
"CMakeFiles/mvccart.dir/main.cpp.o" \
"CMakeFiles/mvccart.dir/art.c.o"

# External object files for target mvccart
mvccart_EXTERNAL_OBJECTS =

mvccart: CMakeFiles/mvccart.dir/main.cpp.o
mvccart: CMakeFiles/mvccart.dir/art.c.o
mvccart: CMakeFiles/mvccart.dir/build.make
mvccart: CMakeFiles/mvccart.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable mvccart"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mvccart.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mvccart.dir/build: mvccart

.PHONY : CMakeFiles/mvccart.dir/build

CMakeFiles/mvccart.dir/requires: CMakeFiles/mvccart.dir/main.cpp.o.requires
CMakeFiles/mvccart.dir/requires: CMakeFiles/mvccart.dir/art.c.o.requires

.PHONY : CMakeFiles/mvccart.dir/requires

CMakeFiles/mvccart.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mvccart.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mvccart.dir/clean

CMakeFiles/mvccart.dir/depend:
	cd /Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fuadshah/Desktop/CODE9/MVCCART /Users/fuadshah/Desktop/CODE9/MVCCART /Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug /Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug /Users/fuadshah/Desktop/CODE9/MVCCART/cmake-build-debug/CMakeFiles/mvccart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mvccart.dir/depend

