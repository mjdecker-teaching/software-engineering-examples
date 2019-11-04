
set(CTEST_PROJECT_NAME "my_stl")
set(CTEST_NIGHTLY_START_TIME "01:00:00 UTC")

# Set test drop location
set(CTEST_DROP_METHOD "http")
set(CTEST_DROP_SITE "voyager-old.cs.bgsu.edu")
set(CTEST_DROP_LOCATION "/cdash/submit.php?project=my_stl")

# Enable cdash
set(CTEST_DROP_SITE_CDASH TRUE)