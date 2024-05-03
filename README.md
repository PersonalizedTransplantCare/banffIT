
<!-- README.md is generated from README.Rmd. Please edit that file -->

# banffIT

<!-- badges: start -->

[![R-CMD-check](https://github.com/maelstrom-research/banffIT/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/maelstrom-research/banffIT/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The banffIT package provides functions to assign standardized diagnoses
using the Banff Classification (Category 1 to 6 diagnoses, including
Acute and Chronic active T-cell mediated rejection as well as Active,
Chronic active, and Chronic antibody mediated rejection). The main
function `banff_launcher()`considers a minimal dataset containing
biopsies information in a specific format (described by a data
dictionary), verifies its content and format (based on the data
dictionary), assign diagnoses, and create a summary report.

## Main functionality

<img src="man/figures/Schema-launcher.png" 
style="width: 100%; margin: 0 auto; display: flex; justify-content: center;">

<br>

# Download section

<button>
<a href="https://github.com/PersonalizedTransplantCare/banffIT/blob/testing/inst/extdata/data_dictionary_Banff_2024_04_19.xlsx" download class="external-link">Data
Dictionary</a>
</button>

also available in R using `get_banff_dictionary()` </br>

<button>
<a href="https://github.com/PersonalizedTransplantCare/banffIT/blob/testing/inst/extdata/template.xlsx" download class="external-link">Template</a>
</button>

also available in R using `get_banff_template()` </br>

<button>
<a href="https://github.com/PersonalizedTransplantCare/banffIT/blob/testing/inst/extdata/example.xlsx" download class="external-link">Example</a>
</button>

also available in R using `get_banff_example()` </br>

# Get started

## Install the package and use the example file

``` r

# To install banffIT
install.packages('banffIT')

library(banffIT)
# If you need help with the package, please use:
banffIT_website()

# use example
input_file = system.file("extdata", "example.xlsx", package = "banffIT")
banff_launcher(
  input_file = input_file,
  output_folder = 'folder_path/example',
  language = 'label:en',
  option_filter = adequacy == 1,
  detail = TRUE)
```
