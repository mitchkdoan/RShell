# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_SOURCE_DIR = /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named rshell

# Build rule for target.
rshell: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 rshell
.PHONY : rshell

# fast build rule for target.
rshell/fast:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/build
.PHONY : rshell/fast

src/And.o: src/And.cpp.o
.PHONY : src/And.o

# target to build an object file
src/And.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/And.cpp.o
.PHONY : src/And.cpp.o

src/And.i: src/And.cpp.i
.PHONY : src/And.i

# target to preprocess a source file
src/And.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/And.cpp.i
.PHONY : src/And.cpp.i

src/And.s: src/And.cpp.s
.PHONY : src/And.s

# target to generate assembly for a file
src/And.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/And.cpp.s
.PHONY : src/And.cpp.s

src/Command.o: src/Command.cpp.o
.PHONY : src/Command.o

# target to build an object file
src/Command.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Command.cpp.o
.PHONY : src/Command.cpp.o

src/Command.i: src/Command.cpp.i
.PHONY : src/Command.i

# target to preprocess a source file
src/Command.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Command.cpp.i
.PHONY : src/Command.cpp.i

src/Command.s: src/Command.cpp.s
.PHONY : src/Command.s

# target to generate assembly for a file
src/Command.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Command.cpp.s
.PHONY : src/Command.cpp.s

src/DOutRedirect.o: src/DOutRedirect.cpp.o
.PHONY : src/DOutRedirect.o

# target to build an object file
src/DOutRedirect.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o
.PHONY : src/DOutRedirect.cpp.o

src/DOutRedirect.i: src/DOutRedirect.cpp.i
.PHONY : src/DOutRedirect.i

# target to preprocess a source file
src/DOutRedirect.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/DOutRedirect.cpp.i
.PHONY : src/DOutRedirect.cpp.i

src/DOutRedirect.s: src/DOutRedirect.cpp.s
.PHONY : src/DOutRedirect.s

# target to generate assembly for a file
src/DOutRedirect.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/DOutRedirect.cpp.s
.PHONY : src/DOutRedirect.cpp.s

src/InRedirect.o: src/InRedirect.cpp.o
.PHONY : src/InRedirect.o

# target to build an object file
src/InRedirect.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/InRedirect.cpp.o
.PHONY : src/InRedirect.cpp.o

src/InRedirect.i: src/InRedirect.cpp.i
.PHONY : src/InRedirect.i

# target to preprocess a source file
src/InRedirect.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/InRedirect.cpp.i
.PHONY : src/InRedirect.cpp.i

src/InRedirect.s: src/InRedirect.cpp.s
.PHONY : src/InRedirect.s

# target to generate assembly for a file
src/InRedirect.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/InRedirect.cpp.s
.PHONY : src/InRedirect.cpp.s

src/Or.o: src/Or.cpp.o
.PHONY : src/Or.o

# target to build an object file
src/Or.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Or.cpp.o
.PHONY : src/Or.cpp.o

src/Or.i: src/Or.cpp.i
.PHONY : src/Or.i

# target to preprocess a source file
src/Or.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Or.cpp.i
.PHONY : src/Or.cpp.i

src/Or.s: src/Or.cpp.s
.PHONY : src/Or.s

# target to generate assembly for a file
src/Or.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Or.cpp.s
.PHONY : src/Or.cpp.s

src/OutRedirect.o: src/OutRedirect.cpp.o
.PHONY : src/OutRedirect.o

# target to build an object file
src/OutRedirect.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/OutRedirect.cpp.o
.PHONY : src/OutRedirect.cpp.o

src/OutRedirect.i: src/OutRedirect.cpp.i
.PHONY : src/OutRedirect.i

# target to preprocess a source file
src/OutRedirect.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/OutRedirect.cpp.i
.PHONY : src/OutRedirect.cpp.i

src/OutRedirect.s: src/OutRedirect.cpp.s
.PHONY : src/OutRedirect.s

# target to generate assembly for a file
src/OutRedirect.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/OutRedirect.cpp.s
.PHONY : src/OutRedirect.cpp.s

src/Pipe.o: src/Pipe.cpp.o
.PHONY : src/Pipe.o

# target to build an object file
src/Pipe.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Pipe.cpp.o
.PHONY : src/Pipe.cpp.o

src/Pipe.i: src/Pipe.cpp.i
.PHONY : src/Pipe.i

# target to preprocess a source file
src/Pipe.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Pipe.cpp.i
.PHONY : src/Pipe.cpp.i

src/Pipe.s: src/Pipe.cpp.s
.PHONY : src/Pipe.s

# target to generate assembly for a file
src/Pipe.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Pipe.cpp.s
.PHONY : src/Pipe.cpp.s

src/Semi.o: src/Semi.cpp.o
.PHONY : src/Semi.o

# target to build an object file
src/Semi.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Semi.cpp.o
.PHONY : src/Semi.cpp.o

src/Semi.i: src/Semi.cpp.i
.PHONY : src/Semi.i

# target to preprocess a source file
src/Semi.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Semi.cpp.i
.PHONY : src/Semi.cpp.i

src/Semi.s: src/Semi.cpp.s
.PHONY : src/Semi.s

# target to generate assembly for a file
src/Semi.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Semi.cpp.s
.PHONY : src/Semi.cpp.s

src/TestCmd.o: src/TestCmd.cpp.o
.PHONY : src/TestCmd.o

# target to build an object file
src/TestCmd.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/TestCmd.cpp.o
.PHONY : src/TestCmd.cpp.o

src/TestCmd.i: src/TestCmd.cpp.i
.PHONY : src/TestCmd.i

# target to preprocess a source file
src/TestCmd.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/TestCmd.cpp.i
.PHONY : src/TestCmd.cpp.i

src/TestCmd.s: src/TestCmd.cpp.s
.PHONY : src/TestCmd.s

# target to generate assembly for a file
src/TestCmd.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/TestCmd.cpp.s
.PHONY : src/TestCmd.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... rshell"
	@echo "... src/And.o"
	@echo "... src/And.i"
	@echo "... src/And.s"
	@echo "... src/Command.o"
	@echo "... src/Command.i"
	@echo "... src/Command.s"
	@echo "... src/DOutRedirect.o"
	@echo "... src/DOutRedirect.i"
	@echo "... src/DOutRedirect.s"
	@echo "... src/InRedirect.o"
	@echo "... src/InRedirect.i"
	@echo "... src/InRedirect.s"
	@echo "... src/Or.o"
	@echo "... src/Or.i"
	@echo "... src/Or.s"
	@echo "... src/OutRedirect.o"
	@echo "... src/OutRedirect.i"
	@echo "... src/OutRedirect.s"
	@echo "... src/Pipe.o"
	@echo "... src/Pipe.i"
	@echo "... src/Pipe.s"
	@echo "... src/Semi.o"
	@echo "... src/Semi.i"
	@echo "... src/Semi.s"
	@echo "... src/TestCmd.o"
	@echo "... src/TestCmd.i"
	@echo "... src/TestCmd.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

