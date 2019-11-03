
file(GLOB STRING_HEADERS *.hpp)
file(GLOB STRING_SOURCE  *.cpp)

#add_library(my_string STATIC ${STRING_SOURCE})
#set_target_properties(my_stl PROPERTIES 
#    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin 
#    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin 
#    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
#)

#install(TARGETS my_stl 
#    RUNTIME DESTINATION bin 
#    LIBRARY DESTINATION lib
#    ARCHIVE DESTINATION lib)

macro(build_lib LIB_NAME LIB_TYPE)

    add_library(${LIB_NAME} ${LIB_TYPE} ${STRING_SOURCE})
    set_target_properties(${LIB_NAME} PROPERTIES 
        LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin 
        ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin 
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
    )
endmacro()

build_lib(my_string_static STATIC)
build_lib(my_string_shared SHARED)

install(TARGETS my_string_static my_string_shared 
    RUNTIME DESTINATION bin 
    LIBRARY DESTINATION lib 
    ARCHIVE DESTINATION lib
)
