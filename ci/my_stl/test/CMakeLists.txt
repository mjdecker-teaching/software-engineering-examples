
macro(add_unit_test TEST_NAME TEST_FILE)
    add_executable(${TEST_NAME} ${TEST_FILE})
    target_link_libraries(${TEST_NAME} my_stl_static)

    add_test(NAME ${TEST_NAME} COMMAND $<TARGET_FILE:${TEST_NAME}>)
    set_target_properties(${TEST_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endmacro()


add_subdirectory(set)
add_subdirectory(string)



