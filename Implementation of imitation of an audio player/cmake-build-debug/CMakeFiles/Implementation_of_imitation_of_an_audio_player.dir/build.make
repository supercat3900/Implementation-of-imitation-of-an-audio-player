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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\super\CLionProjects\Implementation of imitation of an audio player"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\super\CLionProjects\Implementation of imitation of an audio player\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/flags.make

CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.obj: CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/flags.make
CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\super\CLionProjects\Implementation of imitation of an audio player\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Implementation_of_imitation_of_an_audio_player.dir\main.cpp.obj -c "C:\Users\super\CLionProjects\Implementation of imitation of an audio player\main.cpp"

CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\super\CLionProjects\Implementation of imitation of an audio player\main.cpp" > CMakeFiles\Implementation_of_imitation_of_an_audio_player.dir\main.cpp.i

CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\super\CLionProjects\Implementation of imitation of an audio player\main.cpp" -o CMakeFiles\Implementation_of_imitation_of_an_audio_player.dir\main.cpp.s

# Object files for target Implementation_of_imitation_of_an_audio_player
Implementation_of_imitation_of_an_audio_player_OBJECTS = \
"CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.obj"

# External object files for target Implementation_of_imitation_of_an_audio_player
Implementation_of_imitation_of_an_audio_player_EXTERNAL_OBJECTS =

Implementation_of_imitation_of_an_audio_player.exe: CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/main.cpp.obj
Implementation_of_imitation_of_an_audio_player.exe: CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/build.make
Implementation_of_imitation_of_an_audio_player.exe: CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/linklibs.rsp
Implementation_of_imitation_of_an_audio_player.exe: CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/objects1.rsp
Implementation_of_imitation_of_an_audio_player.exe: CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\super\CLionProjects\Implementation of imitation of an audio player\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Implementation_of_imitation_of_an_audio_player.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Implementation_of_imitation_of_an_audio_player.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/build: Implementation_of_imitation_of_an_audio_player.exe
.PHONY : CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/build

CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Implementation_of_imitation_of_an_audio_player.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/clean

CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\super\CLionProjects\Implementation of imitation of an audio player" "C:\Users\super\CLionProjects\Implementation of imitation of an audio player" "C:\Users\super\CLionProjects\Implementation of imitation of an audio player\cmake-build-debug" "C:\Users\super\CLionProjects\Implementation of imitation of an audio player\cmake-build-debug" "C:\Users\super\CLionProjects\Implementation of imitation of an audio player\cmake-build-debug\CMakeFiles\Implementation_of_imitation_of_an_audio_player.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Implementation_of_imitation_of_an_audio_player.dir/depend

