# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Tison/Desktop/gcd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Tison/Desktop/gcd/build

# Include any dependencies generated for this target.
include test/CMakeFiles/check-gcd.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/check-gcd.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/check-gcd.dir/flags.make

test/CMakeFiles/check-gcd.dir/check-gcd.c.o: test/CMakeFiles/check-gcd.dir/flags.make
test/CMakeFiles/check-gcd.dir/check-gcd.c.o: ../test/check-gcd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tison/Desktop/gcd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/check-gcd.dir/check-gcd.c.o"
	cd /Users/Tison/Desktop/gcd/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/check-gcd.dir/check-gcd.c.o   -c /Users/Tison/Desktop/gcd/test/check-gcd.c

test/CMakeFiles/check-gcd.dir/check-gcd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check-gcd.dir/check-gcd.c.i"
	cd /Users/Tison/Desktop/gcd/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Tison/Desktop/gcd/test/check-gcd.c > CMakeFiles/check-gcd.dir/check-gcd.c.i

test/CMakeFiles/check-gcd.dir/check-gcd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check-gcd.dir/check-gcd.c.s"
	cd /Users/Tison/Desktop/gcd/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Tison/Desktop/gcd/test/check-gcd.c -o CMakeFiles/check-gcd.dir/check-gcd.c.s

test/CMakeFiles/check-gcd.dir/check-gcd.c.o.requires:

.PHONY : test/CMakeFiles/check-gcd.dir/check-gcd.c.o.requires

test/CMakeFiles/check-gcd.dir/check-gcd.c.o.provides: test/CMakeFiles/check-gcd.dir/check-gcd.c.o.requires
	$(MAKE) -f test/CMakeFiles/check-gcd.dir/build.make test/CMakeFiles/check-gcd.dir/check-gcd.c.o.provides.build
.PHONY : test/CMakeFiles/check-gcd.dir/check-gcd.c.o.provides

test/CMakeFiles/check-gcd.dir/check-gcd.c.o.provides.build: test/CMakeFiles/check-gcd.dir/check-gcd.c.o


# Object files for target check-gcd
check__gcd_OBJECTS = \
"CMakeFiles/check-gcd.dir/check-gcd.c.o"

# External object files for target check-gcd
check__gcd_EXTERNAL_OBJECTS =

test/check-gcd: test/CMakeFiles/check-gcd.dir/check-gcd.c.o
test/check-gcd: test/CMakeFiles/check-gcd.dir/build.make
test/check-gcd: src/libgcd.a
test/check-gcd: test/CMakeFiles/check-gcd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Tison/Desktop/gcd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check-gcd"
	cd /Users/Tison/Desktop/gcd/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check-gcd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/check-gcd.dir/build: test/check-gcd

.PHONY : test/CMakeFiles/check-gcd.dir/build

test/CMakeFiles/check-gcd.dir/requires: test/CMakeFiles/check-gcd.dir/check-gcd.c.o.requires

.PHONY : test/CMakeFiles/check-gcd.dir/requires

test/CMakeFiles/check-gcd.dir/clean:
	cd /Users/Tison/Desktop/gcd/build/test && $(CMAKE_COMMAND) -P CMakeFiles/check-gcd.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/check-gcd.dir/clean

test/CMakeFiles/check-gcd.dir/depend:
	cd /Users/Tison/Desktop/gcd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Tison/Desktop/gcd /Users/Tison/Desktop/gcd/test /Users/Tison/Desktop/gcd/build /Users/Tison/Desktop/gcd/build/test /Users/Tison/Desktop/gcd/build/test/CMakeFiles/check-gcd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/check-gcd.dir/depend

