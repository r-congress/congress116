
<!-- README.md is generated from README.Rmd. Please edit that file -->

# congress116

<!-- badges: start -->

<!-- badges: end -->

Data on Members of the 116th U.S. Congress

## Installation

You can install the released version of congress116 from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("congress116")
```

or the development version from Github

``` r
remotes::install_github("r-congress/congress116")
```

## Data

Identifiers for members of the 116th U.S. Congress can be found in the
`congress116` dataset

``` r
str(congress116)
#> Classes 'tbl_df', 'tbl' and 'data.frame':    1041 obs. of  14 variables:
#>  $ bioguide     : chr  "M001200" "F000465" "F000465" "F000467" ...
#>  $ full_name    : chr  "A. Donald McEachin" "A. Drew Ferguson" "A. Drew Ferguson" "Abby Finkenauer" ...
#>  $ screen_name  : chr  "RepMcEachin" "RepDrewFerguson" "DrewFergusonGA" "RepFinkenauer" ...
#>  $ user_id      : chr  "816181091673448448" "806583915012046854" "694984534249594882" "1081256295469068288" ...
#>  $ chamber      : chr  "House" "House" "House" "House" ...
#>  $ party        : chr  "D" "R" "R" "D" ...
#>  $ state        : chr  "VA" "GA" "GA" "IA" ...
#>  $ state_full   : chr  "Virginia" "Georgia" "Georgia" "Iowa" ...
#>  $ district     : chr  "4th" "3rd" "3rd" "1st" ...
#>  $ gender       : chr  "M" "M" "M" "W" ...
#>  $ date_of_birth: Date, format: "1961-10-10" "1966-11-15" ...
#>  $ personal     : logi  FALSE FALSE TRUE FALSE FALSE FALSE ...
#>  $ official     : logi  TRUE TRUE FALSE TRUE FALSE TRUE ...
#>  $ campaign     : logi  FALSE FALSE FALSE FALSE TRUE FALSE ...
```

## Functions

Convenience functions are included for importing and joining
Congressional data

``` r
pp_join(congress116)
```
