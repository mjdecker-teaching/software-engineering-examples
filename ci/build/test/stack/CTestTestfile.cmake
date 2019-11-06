# CMake generated Testfile for 
# Source directory: /Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack
# Build directory: /Users/mdecker/teaching/software-engineering-examples/ci/build/test/stack
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_stack_assign "/Users/mdecker/teaching/software-engineering-examples/ci/build/bin/test_stack_assign")
set_tests_properties(test_stack_assign PROPERTIES  _BACKTRACE_TRIPLES "/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/CMakeLists.txt;6;add_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;2;add_unit_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;0;")
add_test(test_stack_ctor_copy "/Users/mdecker/teaching/software-engineering-examples/ci/build/bin/test_stack_ctor_copy")
set_tests_properties(test_stack_ctor_copy PROPERTIES  _BACKTRACE_TRIPLES "/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/CMakeLists.txt;6;add_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;3;add_unit_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;0;")
add_test(test_stack_ctor_default "/Users/mdecker/teaching/software-engineering-examples/ci/build/bin/test_stack_ctor_default")
set_tests_properties(test_stack_ctor_default PROPERTIES  _BACKTRACE_TRIPLES "/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/CMakeLists.txt;6;add_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;4;add_unit_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;0;")
add_test(test_stack_empty "/Users/mdecker/teaching/software-engineering-examples/ci/build/bin/test_stack_empty")
set_tests_properties(test_stack_empty PROPERTIES  _BACKTRACE_TRIPLES "/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/CMakeLists.txt;6;add_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;5;add_unit_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;0;")
add_test(test_stack_push_pop "/Users/mdecker/teaching/software-engineering-examples/ci/build/bin/test_stack_push_pop")
set_tests_properties(test_stack_push_pop PROPERTIES  _BACKTRACE_TRIPLES "/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/CMakeLists.txt;6;add_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;6;add_unit_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;0;")
add_test(test_stack_swap "/Users/mdecker/teaching/software-engineering-examples/ci/build/bin/test_stack_swap")
set_tests_properties(test_stack_swap PROPERTIES  _BACKTRACE_TRIPLES "/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/CMakeLists.txt;6;add_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;7;add_unit_test;/Users/mdecker/teaching/software-engineering-examples/ci/my_stl/test/stack/CMakeLists.txt;0;")
