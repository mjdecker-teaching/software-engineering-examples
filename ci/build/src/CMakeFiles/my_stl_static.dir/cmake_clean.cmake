file(REMOVE_RECURSE
  "libmy_stl.pdb"
  "libmy_stl.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/my_stl_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
