cmake_minimum_required(VERSION 2.8)
project(my_string)

# include/link search path
include_directories(include)
add_definitions(-std=c++11 -fPIC)

# will need to use foo or something as do not have permission to install
set(CMAKE_INSTALL_PREFIX "foo")

add_subdirectory(src)

# Simple cpack
set(CPACK_PACKAGE_NAME "my_string") 
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")

# needs to be last...
include(CPack)
