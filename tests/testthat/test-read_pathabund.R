# File created by roxut; edit the function definition file, not this file

# Test found in read_pathabund.R:8 (file:line)
  
nrow <- read_pathabund(microFunk:::path_abund) %>% nrow()
expect_equal(nrow, 2119068)
