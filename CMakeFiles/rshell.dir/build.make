# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# Include any dependencies generated for this target.
include CMakeFiles/rshell.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rshell.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rshell.dir/flags.make

CMakeFiles/rshell.dir/src/main.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/main.cpp.o: src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/main.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/main.cpp

CMakeFiles/rshell.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/main.cpp > CMakeFiles/rshell.dir/src/main.cpp.i

CMakeFiles/rshell.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/main.cpp -o CMakeFiles/rshell.dir/src/main.cpp.s

CMakeFiles/rshell.dir/src/main.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/main.cpp.o.requires

CMakeFiles/rshell.dir/src/main.cpp.o.provides: CMakeFiles/rshell.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/main.cpp.o.provides

CMakeFiles/rshell.dir/src/main.cpp.o.provides.build: CMakeFiles/rshell.dir/src/main.cpp.o

CMakeFiles/rshell.dir/src/Command.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/Command.cpp.o: src/Command.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/Command.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/Command.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Command.cpp

CMakeFiles/rshell.dir/src/Command.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/Command.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Command.cpp > CMakeFiles/rshell.dir/src/Command.cpp.i

CMakeFiles/rshell.dir/src/Command.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/Command.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Command.cpp -o CMakeFiles/rshell.dir/src/Command.cpp.s

CMakeFiles/rshell.dir/src/Command.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/Command.cpp.o.requires

CMakeFiles/rshell.dir/src/Command.cpp.o.provides: CMakeFiles/rshell.dir/src/Command.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Command.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/Command.cpp.o.provides

CMakeFiles/rshell.dir/src/Command.cpp.o.provides.build: CMakeFiles/rshell.dir/src/Command.cpp.o

CMakeFiles/rshell.dir/src/And.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/And.cpp.o: src/And.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/And.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/And.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/And.cpp

CMakeFiles/rshell.dir/src/And.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/And.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/And.cpp > CMakeFiles/rshell.dir/src/And.cpp.i

CMakeFiles/rshell.dir/src/And.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/And.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/And.cpp -o CMakeFiles/rshell.dir/src/And.cpp.s

CMakeFiles/rshell.dir/src/And.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/And.cpp.o.requires

CMakeFiles/rshell.dir/src/And.cpp.o.provides: CMakeFiles/rshell.dir/src/And.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/And.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/And.cpp.o.provides

CMakeFiles/rshell.dir/src/And.cpp.o.provides.build: CMakeFiles/rshell.dir/src/And.cpp.o

CMakeFiles/rshell.dir/src/Or.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/Or.cpp.o: src/Or.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/Or.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/Or.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Or.cpp

CMakeFiles/rshell.dir/src/Or.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/Or.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Or.cpp > CMakeFiles/rshell.dir/src/Or.cpp.i

CMakeFiles/rshell.dir/src/Or.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/Or.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Or.cpp -o CMakeFiles/rshell.dir/src/Or.cpp.s

CMakeFiles/rshell.dir/src/Or.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/Or.cpp.o.requires

CMakeFiles/rshell.dir/src/Or.cpp.o.provides: CMakeFiles/rshell.dir/src/Or.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Or.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/Or.cpp.o.provides

CMakeFiles/rshell.dir/src/Or.cpp.o.provides.build: CMakeFiles/rshell.dir/src/Or.cpp.o

CMakeFiles/rshell.dir/src/TestCmd.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/TestCmd.cpp.o: src/TestCmd.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/TestCmd.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/TestCmd.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/TestCmd.cpp

CMakeFiles/rshell.dir/src/TestCmd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/TestCmd.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/TestCmd.cpp > CMakeFiles/rshell.dir/src/TestCmd.cpp.i

CMakeFiles/rshell.dir/src/TestCmd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/TestCmd.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/TestCmd.cpp -o CMakeFiles/rshell.dir/src/TestCmd.cpp.s

CMakeFiles/rshell.dir/src/TestCmd.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/TestCmd.cpp.o.requires

CMakeFiles/rshell.dir/src/TestCmd.cpp.o.provides: CMakeFiles/rshell.dir/src/TestCmd.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/TestCmd.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/TestCmd.cpp.o.provides

CMakeFiles/rshell.dir/src/TestCmd.cpp.o.provides.build: CMakeFiles/rshell.dir/src/TestCmd.cpp.o

CMakeFiles/rshell.dir/src/Semi.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/Semi.cpp.o: src/Semi.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/Semi.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/Semi.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Semi.cpp

CMakeFiles/rshell.dir/src/Semi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/Semi.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Semi.cpp > CMakeFiles/rshell.dir/src/Semi.cpp.i

CMakeFiles/rshell.dir/src/Semi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/Semi.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Semi.cpp -o CMakeFiles/rshell.dir/src/Semi.cpp.s

CMakeFiles/rshell.dir/src/Semi.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/Semi.cpp.o.requires

CMakeFiles/rshell.dir/src/Semi.cpp.o.provides: CMakeFiles/rshell.dir/src/Semi.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Semi.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/Semi.cpp.o.provides

CMakeFiles/rshell.dir/src/Semi.cpp.o.provides.build: CMakeFiles/rshell.dir/src/Semi.cpp.o

CMakeFiles/rshell.dir/src/InRedirect.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/InRedirect.cpp.o: src/InRedirect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/InRedirect.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/InRedirect.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/InRedirect.cpp

CMakeFiles/rshell.dir/src/InRedirect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/InRedirect.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/InRedirect.cpp > CMakeFiles/rshell.dir/src/InRedirect.cpp.i

CMakeFiles/rshell.dir/src/InRedirect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/InRedirect.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/InRedirect.cpp -o CMakeFiles/rshell.dir/src/InRedirect.cpp.s

CMakeFiles/rshell.dir/src/InRedirect.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/InRedirect.cpp.o.requires

CMakeFiles/rshell.dir/src/InRedirect.cpp.o.provides: CMakeFiles/rshell.dir/src/InRedirect.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/InRedirect.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/InRedirect.cpp.o.provides

CMakeFiles/rshell.dir/src/InRedirect.cpp.o.provides.build: CMakeFiles/rshell.dir/src/InRedirect.cpp.o

CMakeFiles/rshell.dir/src/OutRedirect.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/OutRedirect.cpp.o: src/OutRedirect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/OutRedirect.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/OutRedirect.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/OutRedirect.cpp

CMakeFiles/rshell.dir/src/OutRedirect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/OutRedirect.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/OutRedirect.cpp > CMakeFiles/rshell.dir/src/OutRedirect.cpp.i

CMakeFiles/rshell.dir/src/OutRedirect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/OutRedirect.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/OutRedirect.cpp -o CMakeFiles/rshell.dir/src/OutRedirect.cpp.s

CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.requires

CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.provides: CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.provides

CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.provides.build: CMakeFiles/rshell.dir/src/OutRedirect.cpp.o

CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o: src/DOutRedirect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/DOutRedirect.cpp

CMakeFiles/rshell.dir/src/DOutRedirect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/DOutRedirect.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/DOutRedirect.cpp > CMakeFiles/rshell.dir/src/DOutRedirect.cpp.i

CMakeFiles/rshell.dir/src/DOutRedirect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/DOutRedirect.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/DOutRedirect.cpp -o CMakeFiles/rshell.dir/src/DOutRedirect.cpp.s

CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.requires

CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.provides: CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.provides

CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.provides.build: CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o

CMakeFiles/rshell.dir/src/Pipe.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/Pipe.cpp.o: src/Pipe.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rshell.dir/src/Pipe.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/Pipe.cpp.o -c /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Pipe.cpp

CMakeFiles/rshell.dir/src/Pipe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/Pipe.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Pipe.cpp > CMakeFiles/rshell.dir/src/Pipe.cpp.i

CMakeFiles/rshell.dir/src/Pipe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/Pipe.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/src/Pipe.cpp -o CMakeFiles/rshell.dir/src/Pipe.cpp.s

CMakeFiles/rshell.dir/src/Pipe.cpp.o.requires:
.PHONY : CMakeFiles/rshell.dir/src/Pipe.cpp.o.requires

CMakeFiles/rshell.dir/src/Pipe.cpp.o.provides: CMakeFiles/rshell.dir/src/Pipe.cpp.o.requires
	$(MAKE) -f CMakeFiles/rshell.dir/build.make CMakeFiles/rshell.dir/src/Pipe.cpp.o.provides.build
.PHONY : CMakeFiles/rshell.dir/src/Pipe.cpp.o.provides

CMakeFiles/rshell.dir/src/Pipe.cpp.o.provides.build: CMakeFiles/rshell.dir/src/Pipe.cpp.o

# Object files for target rshell
rshell_OBJECTS = \
"CMakeFiles/rshell.dir/src/main.cpp.o" \
"CMakeFiles/rshell.dir/src/Command.cpp.o" \
"CMakeFiles/rshell.dir/src/And.cpp.o" \
"CMakeFiles/rshell.dir/src/Or.cpp.o" \
"CMakeFiles/rshell.dir/src/TestCmd.cpp.o" \
"CMakeFiles/rshell.dir/src/Semi.cpp.o" \
"CMakeFiles/rshell.dir/src/InRedirect.cpp.o" \
"CMakeFiles/rshell.dir/src/OutRedirect.cpp.o" \
"CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o" \
"CMakeFiles/rshell.dir/src/Pipe.cpp.o"

# External object files for target rshell
rshell_EXTERNAL_OBJECTS =

rshell: CMakeFiles/rshell.dir/src/main.cpp.o
rshell: CMakeFiles/rshell.dir/src/Command.cpp.o
rshell: CMakeFiles/rshell.dir/src/And.cpp.o
rshell: CMakeFiles/rshell.dir/src/Or.cpp.o
rshell: CMakeFiles/rshell.dir/src/TestCmd.cpp.o
rshell: CMakeFiles/rshell.dir/src/Semi.cpp.o
rshell: CMakeFiles/rshell.dir/src/InRedirect.cpp.o
rshell: CMakeFiles/rshell.dir/src/OutRedirect.cpp.o
rshell: CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o
rshell: CMakeFiles/rshell.dir/src/Pipe.cpp.o
rshell: CMakeFiles/rshell.dir/build.make
rshell: CMakeFiles/rshell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable rshell"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rshell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rshell.dir/build: rshell
.PHONY : CMakeFiles/rshell.dir/build

CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/main.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/Command.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/And.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/Or.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/TestCmd.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/Semi.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/InRedirect.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/OutRedirect.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/DOutRedirect.cpp.o.requires
CMakeFiles/rshell.dir/requires: CMakeFiles/rshell.dir/src/Pipe.cpp.o.requires
.PHONY : CMakeFiles/rshell.dir/requires

CMakeFiles/rshell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rshell.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rshell.dir/clean

CMakeFiles/rshell.dir/depend:
	cd /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood /home/ubuntu/workspace/CS100/assignment-1-bakugo-is-misunderstood/CMakeFiles/rshell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rshell.dir/depend
