
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
remotes::install_github("r-congress/congress116)
```

## Data

Identifiers for members of the 116th U.S. Congress can be found in the
`congress116` dataset

``` r
head(congress116)
#>   bioguide screen_name_official screen_name_personal
#> 1  A000374           RepAbraham                 <NA>
#> 2  A000370             RepAdams                 <NA>
#> 3  A000055      Robert_Aderholt                 <NA>
#> 4  A000371       reppeteaguilar          aguilarpete
#> 5  A000360         SenAlexander                 <NA>
#> 6  A000372         reprickallen                 <NA>
```

## Functions

Convenience functions are included for importing and joining
Congressional data

``` r
pp_join(congress116)
```
