file(REMOVE_RECURSE
  "../bin/libmy_stl.pdb"
  "../bin/libmy_stl.dylib"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/my_stl_shared.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
