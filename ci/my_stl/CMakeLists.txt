cmake_minimum_required(VERSION 2.8)
project(my_stl)

# Put the build information in the directory that uses it
include(CTest)

option(BUILD_UNIT_TESTS "Build unit tests for my_stl" ON)

# include/link search path
include_directories(src/set/ src/stack src/string)

# for current directory and below
if(${CMAKE_COMPILER_IS_GNUCXX})
    # coverage is gcc only
#    add_definitions(-fPIC -std=c++0x -g -O0 -fprofile-arcs -ftest-coverage)
    add_definitions(-fPIC -std=c++0x -g -O0)
elseif("x${CMAKE_CXX_COMPILER_ID}" STREQUAL "xClang")
    add_definitions(-std=c++11)
else()
    message(FATAL_ERROR "Unknown compiler: ${CMAKE_CXX_COMPILER_ID}.")
endif()

# will need to use foo or something as do not have permission to install
set(CMAKE_INSTALL_PREFIX "/usr/local")

add_subdirectory(src)

# BULID_TESTING will avoid building them, but if do not want them in ctest (not reported as not run)
if(BUILD_UNIT_TESTS)
    add_subdirectory(test)
endif()

# Simple cpack, then show srcML version
set(CPACK_PACKAGE_NAME "my_stl") 
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")

# needs to be last...
include(CPack)
