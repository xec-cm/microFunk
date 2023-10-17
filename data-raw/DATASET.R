## code to prepare `DATASET` dataset goes here

path_abund <-
    "https://raw.githubusercontent.com/biobakery/biobakery/master/test_suite/biobakery_tests/data/humann/input/hmp_pathabund.pcl"

usethis::use_data(path_abund, overwrite = TRUE, internal = TRUE)
