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
CMAKE_SOURCE_DIR = /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build

# Include any dependencies generated for this target.
include src/CMakeFiles/stack.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/stack.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/stack.dir/flags.make

src/CMakeFiles/stack.dir/stack.c.o: src/CMakeFiles/stack.dir/flags.make
src/CMakeFiles/stack.dir/stack.c.o: ../src/stack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/stack.dir/stack.c.o"
	cd /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stack.dir/stack.c.o   -c /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/src/stack.c

src/CMakeFiles/stack.dir/stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stack.dir/stack.c.i"
	cd /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/src/stack.c > CMakeFiles/stack.dir/stack.c.i

src/CMakeFiles/stack.dir/stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stack.dir/stack.c.s"
	cd /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/src/stack.c -o CMakeFiles/stack.dir/stack.c.s

src/CMakeFiles/stack.dir/stack.c.o.requires:

.PHONY : src/CMakeFiles/stack.dir/stack.c.o.requires

src/CMakeFiles/stack.dir/stack.c.o.provides: src/CMakeFiles/stack.dir/stack.c.o.requires
	$(MAKE) -f src/CMakeFiles/stack.dir/build.make src/CMakeFiles/stack.dir/stack.c.o.provides.build
.PHONY : src/CMakeFiles/stack.dir/stack.c.o.provides

src/CMakeFiles/stack.dir/stack.c.o.provides.build: src/CMakeFiles/stack.dir/stack.c.o


# Object files for target stack
stack_OBJECTS = \
"CMakeFiles/stack.dir/stack.c.o"

# External object files for target stack
stack_EXTERNAL_OBJECTS =

src/libstack.a: src/CMakeFiles/stack.dir/stack.c.o
src/libstack.a: src/CMakeFiles/stack.dir/build.make
src/libstack.a: src/CMakeFiles/stack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libstack.a"
	cd /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src && $(CMAKE_COMMAND) -P CMakeFiles/stack.dir/cmake_clean_target.cmake
	cd /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/stack.dir/build: src/libstack.a

.PHONY : src/CMakeFiles/stack.dir/build

src/CMakeFiles/stack.dir/requires: src/CMakeFiles/stack.dir/stack.c.o.requires

.PHONY : src/CMakeFiles/stack.dir/requires

src/CMakeFiles/stack.dir/clean:
	cd /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src && $(CMAKE_COMMAND) -P CMakeFiles/stack.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/stack.dir/clean

src/CMakeFiles/stack.dir/depend:
	cd /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/src /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src /home/tison/Downloads/Secure_and_Dependable_Systems-master/stack/build/src/CMakeFiles/stack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/stack.dir/depend

