# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mdecker/teaching/software-engineering-examples/ci/my_stl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mdecker/teaching/software-engineering-examples/ci/build

# Include any dependencies generated for this target.
include test/string/CMakeFiles/test_str_greaterThan.dir/depend.make

# Include the progress variables for this target.
include test/string/CMakeFiles/test_str_greaterThan.dir/progress.make

# Include the compile flags for this target's objects.
include test/string/CMakeFiles/test_str_greaterThan.dir/flags.make

test/string/CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.o: test/string/CMakeFiles/test_str_greaterThan.dir/flags.make
test/string/CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.o: /Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/string/test_greaterThan.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mdecker/teaching/software-engineering-examples/ci/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/string/CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.o"
	cd /Users/mdecker/teaching/software-engineering-examples/ci/build/test/string && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.o -c /Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/string/test_greaterThan.cpp

test/string/CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.i"
	cd /Users/mdecker/teaching/software-engineering-examples/ci/build/test/string && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/string/test_greaterThan.cpp > CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.i

test/string/CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.s"
	cd /Users/mdecker/teaching/software-engineering-examples/ci/build/test/string && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/string/test_greaterThan.cpp -o CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.s

# Object files for target test_str_greaterThan
test_str_greaterThan_OBJECTS = \
"CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.o"

# External object files for target test_str_greaterThan
test_str_greaterThan_EXTERNAL_OBJECTS =

bin/test_str_greaterThan: test/string/CMakeFiles/test_str_greaterThan.dir/test_greaterThan.cpp.o
bin/test_str_greaterThan: test/string/CMakeFiles/test_str_greaterThan.dir/build.make
bin/test_str_greaterThan: src/libmy_stl.a
bin/test_str_greaterThan: test/string/CMakeFiles/test_str_greaterThan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mdecker/teaching/software-engineering-examples/ci/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/test_str_greaterThan"
	cd /Users/mdecker/teaching/software-engineering-examples/ci/build/test/string && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_str_greaterThan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/string/CMakeFiles/test_str_greaterThan.dir/build: bin/test_str_greaterThan

.PHONY : test/string/CMakeFiles/test_str_greaterThan.dir/build

test/string/CMakeFiles/test_str_greaterThan.dir/clean:
	cd /Users/mdecker/teaching/software-engineering-examples/ci/build/test/string && $(CMAKE_COMMAND) -P CMakeFiles/test_str_greaterThan.dir/cmake_clean.cmake
.PHONY : test/string/CMakeFiles/test_str_greaterThan.dir/clean

test/string/CMakeFiles/test_str_greaterThan.dir/depend:
	cd /Users/mdecker/teaching/software-engineering-examples/ci/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mdecker/teaching/software-engineering-examples/ci/my_stl /Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/string /Users/mdecker/teaching/software-engineering-examples/ci/build /Users/mdecker/teaching/software-engineering-examples/ci/build/test/string /Users/mdecker/teaching/software-engineering-examples/ci/build/test/string/CMakeFiles/test_str_greaterThan.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/string/CMakeFiles/test_str_greaterThan.dir/depend

