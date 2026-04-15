
add_subdirectory(set)
add_subdirectory(string)

macro(build_lib LIB_NAME LIB_TYPE)

    add_library(${LIB_NAME} ${LIB_TYPE} $<TARGET_OBJECTS:set> $<TARGET_OBJECTS:string>)
    set_target_properties(${LIB_NAME} PROPERTIES OUTPUT_NAME my_stl)

endmacro()

build_lib(my_stl_static STATIC)
build_lib(my_stl_shared SHARED)
