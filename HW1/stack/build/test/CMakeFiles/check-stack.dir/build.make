# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build

# Include any dependencies generated for this target.
include test/CMakeFiles/check-stack.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/check-stack.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/check-stack.dir/flags.make

test/CMakeFiles/check-stack.dir/check-stack.c.o: test/CMakeFiles/check-stack.dir/flags.make
test/CMakeFiles/check-stack.dir/check-stack.c.o: ../test/check-stack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/check-stack.dir/check-stack.c.o"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/check-stack.dir/check-stack.c.o   -c /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/test/check-stack.c

test/CMakeFiles/check-stack.dir/check-stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check-stack.dir/check-stack.c.i"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/test/check-stack.c > CMakeFiles/check-stack.dir/check-stack.c.i

test/CMakeFiles/check-stack.dir/check-stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check-stack.dir/check-stack.c.s"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/test/check-stack.c -o CMakeFiles/check-stack.dir/check-stack.c.s

test/CMakeFiles/check-stack.dir/check-stack.c.o.requires:

.PHONY : test/CMakeFiles/check-stack.dir/check-stack.c.o.requires

test/CMakeFiles/check-stack.dir/check-stack.c.o.provides: test/CMakeFiles/check-stack.dir/check-stack.c.o.requires
	$(MAKE) -f test/CMakeFiles/check-stack.dir/build.make test/CMakeFiles/check-stack.dir/check-stack.c.o.provides.build
.PHONY : test/CMakeFiles/check-stack.dir/check-stack.c.o.provides

test/CMakeFiles/check-stack.dir/check-stack.c.o.provides.build: test/CMakeFiles/check-stack.dir/check-stack.c.o


# Object files for target check-stack
check__stack_OBJECTS = \
"CMakeFiles/check-stack.dir/check-stack.c.o"

# External object files for target check-stack
check__stack_EXTERNAL_OBJECTS =

test/check-stack: test/CMakeFiles/check-stack.dir/check-stack.c.o
test/check-stack: test/CMakeFiles/check-stack.dir/build.make
test/check-stack: src/libstack.a
test/check-stack: test/CMakeFiles/check-stack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check-stack"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check-stack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/check-stack.dir/build: test/check-stack

.PHONY : test/CMakeFiles/check-stack.dir/build

test/CMakeFiles/check-stack.dir/requires: test/CMakeFiles/check-stack.dir/check-stack.c.o.requires

.PHONY : test/CMakeFiles/check-stack.dir/requires

test/CMakeFiles/check-stack.dir/clean:
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/test && $(CMAKE_COMMAND) -P CMakeFiles/check-stack.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/check-stack.dir/clean

test/CMakeFiles/check-stack.dir/depend:
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/test /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/test /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/stack/build/test/CMakeFiles/check-stack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/check-stack.dir/depend
