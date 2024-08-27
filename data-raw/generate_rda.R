## code to prepare `valueType_list` dataset goes here

library(fabR)
library(usethis)

banff_dict_2022 <- read_excel_allsheets("inst/extdata/2022/banff_dictionary.xlsx")
banff_dict_2022 <- banff_dict_2022[c('ReadMe','Variables','Categories')]
banff_example_2022  <- read_excel_allsheets("inst/extdata/2022/banff_example.xlsx")
banff_template_2022 <- read_excel_allsheets("inst/extdata/2022/banff_template.xlsx")

banff_dict_2017 <- read_excel_allsheets("inst/extdata/2017/banff_dictionary.xlsx")
banff_dict_2017 <- banff_dict_2017[c('ReadMe','Variables','Categories')]
banff_example_2017  <- read_excel_allsheets("inst/extdata/2017/banff_example.xlsx")
banff_template_2017 <- read_excel_allsheets("inst/extdata/2017/banff_template.xlsx")

use_data(
  banff_dict_2022,
  banff_template_2022,
  banff_example_2022,

  banff_dict_2017,
  banff_template_2017,
  banff_example_2017,

  overwrite = TRUE, internal = TRUE)
