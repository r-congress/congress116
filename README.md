
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
head(congress116)
#>   bioguide     full_name gender chamber district state party       dataset     type
#> 1  A000374 Ralph Abraham      M     rep        5    LA     R tweetcongress official
#> 2  A000374 Ralph Abraham      M     rep        5    LA     R   congress116 official
#> 3  A000374 Ralph Abraham      M     rep        5    LA     R    propublica official
#> 4  A000370    Alma Adams      F     rep       12    NC     D tweetcongress official
#> 5  A000370    Alma Adams      F     rep       12    NC     D   congress116 official
#> 6  A000370    Alma Adams      F     rep       12    NC     D    propublica official
#>   screen_name date_of_birth facebook_account youtube_account govtrack_id cspan_id
#> 1  RepAbraham          <NA>             <NA>            <NA>        <NA>     <NA>
#> 2  RepAbraham          <NA>             <NA>            <NA>        <NA>     <NA>
#> 3  RepAbraham          <NA>             <NA>            <NA>        <NA>     <NA>
#> 4    RepAdams          <NA>             <NA>            <NA>        <NA>     <NA>
#> 5    RepAdams          <NA>             <NA>            <NA>        <NA>     <NA>
#> 6    RepAdams          <NA>             <NA>            <NA>        <NA>     <NA>
#>   votesmart_id icpsr_id crp_id google_entity_id fec_candidate_id  url rss_url cook_pvi
#> 1         <NA>     <NA>   <NA>             <NA>             <NA> <NA>    <NA>     <NA>
#> 2         <NA>     <NA>   <NA>             <NA>             <NA> <NA>    <NA>     <NA>
#> 3         <NA>     <NA>   <NA>             <NA>             <NA> <NA>    <NA>     <NA>
#> 4         <NA>     <NA>   <NA>             <NA>             <NA> <NA>    <NA>     <NA>
#> 5         <NA>     <NA>   <NA>             <NA>             <NA> <NA>    <NA>     <NA>
#> 6         <NA>     <NA>   <NA>             <NA>             <NA> <NA>    <NA>     <NA>
#>   dw_nominate ideal_point at_large congress
#> 1          NA          NA       NA     <NA>
#> 2          NA          NA       NA     <NA>
#> 3          NA          NA       NA     <NA>
#> 4          NA          NA       NA     <NA>
#> 5          NA          NA       NA     <NA>
#> 6          NA          NA       NA     <NA>
```

## Functions

Convenience functions are included for importing and joining
Congressional data

``` r
pp_join(congress116)
```
