# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\HW avs\HW5\Programm"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\HW avs\HW5\Programm\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Programm.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Programm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Programm.dir/flags.make

CMakeFiles/Programm.dir/main.cpp.obj: CMakeFiles/Programm.dir/flags.make
CMakeFiles/Programm.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\HW avs\HW5\Programm\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Programm.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Programm.dir\main.cpp.obj -c "D:\HW avs\HW5\Programm\main.cpp"

CMakeFiles/Programm.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Programm.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\HW avs\HW5\Programm\main.cpp" > CMakeFiles\Programm.dir\main.cpp.i

CMakeFiles/Programm.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Programm.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\HW avs\HW5\Programm\main.cpp" -o CMakeFiles\Programm.dir\main.cpp.s

# Object files for target Programm
Programm_OBJECTS = \
"CMakeFiles/Programm.dir/main.cpp.obj"

# External object files for target Programm
Programm_EXTERNAL_OBJECTS =

Programm.exe: CMakeFiles/Programm.dir/main.cpp.obj
Programm.exe: CMakeFiles/Programm.dir/build.make
Programm.exe: CMakeFiles/Programm.dir/linklibs.rsp
Programm.exe: CMakeFiles/Programm.dir/objects1.rsp
Programm.exe: CMakeFiles/Programm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\HW avs\HW5\Programm\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Programm.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Programm.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Programm.dir/build: Programm.exe
.PHONY : CMakeFiles/Programm.dir/build

CMakeFiles/Programm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Programm.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Programm.dir/clean

CMakeFiles/Programm.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\HW avs\HW5\Programm" "D:\HW avs\HW5\Programm" "D:\HW avs\HW5\Programm\cmake-build-debug" "D:\HW avs\HW5\Programm\cmake-build-debug" "D:\HW avs\HW5\Programm\cmake-build-debug\CMakeFiles\Programm.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Programm.dir/depend
