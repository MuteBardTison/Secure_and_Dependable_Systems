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
CMAKE_SOURCE_DIR = /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build

# Include any dependencies generated for this target.
include src/CMakeFiles/rpn.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/rpn.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/rpn.dir/flags.make

src/CMakeFiles/rpn.dir/rpn.c.o: src/CMakeFiles/rpn.dir/flags.make
src/CMakeFiles/rpn.dir/rpn.c.o: ../src/rpn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/rpn.dir/rpn.c.o"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rpn.dir/rpn.c.o   -c /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/src/rpn.c

src/CMakeFiles/rpn.dir/rpn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rpn.dir/rpn.c.i"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/src/rpn.c > CMakeFiles/rpn.dir/rpn.c.i

src/CMakeFiles/rpn.dir/rpn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rpn.dir/rpn.c.s"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/src/rpn.c -o CMakeFiles/rpn.dir/rpn.c.s

src/CMakeFiles/rpn.dir/rpn.c.o.requires:

.PHONY : src/CMakeFiles/rpn.dir/rpn.c.o.requires

src/CMakeFiles/rpn.dir/rpn.c.o.provides: src/CMakeFiles/rpn.dir/rpn.c.o.requires
	$(MAKE) -f src/CMakeFiles/rpn.dir/build.make src/CMakeFiles/rpn.dir/rpn.c.o.provides.build
.PHONY : src/CMakeFiles/rpn.dir/rpn.c.o.provides

src/CMakeFiles/rpn.dir/rpn.c.o.provides.build: src/CMakeFiles/rpn.dir/rpn.c.o


src/CMakeFiles/rpn.dir/stack.c.o: src/CMakeFiles/rpn.dir/flags.make
src/CMakeFiles/rpn.dir/stack.c.o: ../src/stack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/rpn.dir/stack.c.o"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rpn.dir/stack.c.o   -c /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/src/stack.c

src/CMakeFiles/rpn.dir/stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rpn.dir/stack.c.i"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/src/stack.c > CMakeFiles/rpn.dir/stack.c.i

src/CMakeFiles/rpn.dir/stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rpn.dir/stack.c.s"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/src/stack.c -o CMakeFiles/rpn.dir/stack.c.s

src/CMakeFiles/rpn.dir/stack.c.o.requires:

.PHONY : src/CMakeFiles/rpn.dir/stack.c.o.requires

src/CMakeFiles/rpn.dir/stack.c.o.provides: src/CMakeFiles/rpn.dir/stack.c.o.requires
	$(MAKE) -f src/CMakeFiles/rpn.dir/build.make src/CMakeFiles/rpn.dir/stack.c.o.provides.build
.PHONY : src/CMakeFiles/rpn.dir/stack.c.o.provides

src/CMakeFiles/rpn.dir/stack.c.o.provides.build: src/CMakeFiles/rpn.dir/stack.c.o


# Object files for target rpn
rpn_OBJECTS = \
"CMakeFiles/rpn.dir/rpn.c.o" \
"CMakeFiles/rpn.dir/stack.c.o"

# External object files for target rpn
rpn_EXTERNAL_OBJECTS =

src/librpn.a: src/CMakeFiles/rpn.dir/rpn.c.o
src/librpn.a: src/CMakeFiles/rpn.dir/stack.c.o
src/librpn.a: src/CMakeFiles/rpn.dir/build.make
src/librpn.a: src/CMakeFiles/rpn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library librpn.a"
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && $(CMAKE_COMMAND) -P CMakeFiles/rpn.dir/cmake_clean_target.cmake
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rpn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/rpn.dir/build: src/librpn.a

.PHONY : src/CMakeFiles/rpn.dir/build

src/CMakeFiles/rpn.dir/requires: src/CMakeFiles/rpn.dir/rpn.c.o.requires
src/CMakeFiles/rpn.dir/requires: src/CMakeFiles/rpn.dir/stack.c.o.requires

.PHONY : src/CMakeFiles/rpn.dir/requires

src/CMakeFiles/rpn.dir/clean:
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src && $(CMAKE_COMMAND) -P CMakeFiles/rpn.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/rpn.dir/clean

src/CMakeFiles/rpn.dir/depend:
	cd /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/src /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src /home/tison/Desktop/Secure_and_Dependable_Systems-master/HW1/rpnc/build/src/CMakeFiles/rpn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/rpn.dir/depend
