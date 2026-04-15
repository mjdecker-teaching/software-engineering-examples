cmake_minimum_required(VERSION 3.21)

project(my_stl)

include(CTest)

include_directories(src/string src/set)

add_subdirectory(src)
