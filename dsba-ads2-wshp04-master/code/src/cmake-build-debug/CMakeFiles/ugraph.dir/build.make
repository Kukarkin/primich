# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ugraph.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ugraph.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ugraph.dir/flags.make

CMakeFiles/ugraph.dir/ugraph/main.cpp.obj: CMakeFiles/ugraph.dir/flags.make
CMakeFiles/ugraph.dir/ugraph/main.cpp.obj: ../ugraph/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ugraph.dir/ugraph/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ugraph.dir\ugraph\main.cpp.obj -c C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\ugraph\main.cpp

CMakeFiles/ugraph.dir/ugraph/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ugraph.dir/ugraph/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\ugraph\main.cpp > CMakeFiles\ugraph.dir\ugraph\main.cpp.i

CMakeFiles/ugraph.dir/ugraph/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ugraph.dir/ugraph/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\ugraph\main.cpp -o CMakeFiles\ugraph.dir\ugraph\main.cpp.s

# Object files for target ugraph
ugraph_OBJECTS = \
"CMakeFiles/ugraph.dir/ugraph/main.cpp.obj"

# External object files for target ugraph
ugraph_EXTERNAL_OBJECTS =

ugraph.exe: CMakeFiles/ugraph.dir/ugraph/main.cpp.obj
ugraph.exe: CMakeFiles/ugraph.dir/build.make
ugraph.exe: CMakeFiles/ugraph.dir/linklibs.rsp
ugraph.exe: CMakeFiles/ugraph.dir/objects1.rsp
ugraph.exe: CMakeFiles/ugraph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ugraph.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ugraph.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ugraph.dir/build: ugraph.exe

.PHONY : CMakeFiles/ugraph.dir/build

CMakeFiles/ugraph.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ugraph.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ugraph.dir/clean

CMakeFiles/ugraph.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\cmake-build-debug C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\cmake-build-debug C:\Users\Nickuks\CLionProjects\dsba-ads2-wshp04-master\dsba-ads2-wshp04-master\code\src\cmake-build-debug\CMakeFiles\ugraph.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ugraph.dir/depend

