cmake_minimum_required(VERSION 2.8)
project(set)

add_definitions(-std=c++11)


file(GLOB SET_HEADERS *.hpp)

add_library(set OBJECT set.cpp ${SET_HEADERS})

add_executable(test_default_ctor test_default_ctor.cpp $<TARGET_OBJECTS:set>)
add_executable(test_int_ctor test_int_ctor.cpp $<TARGET_OBJECTS:set>)
