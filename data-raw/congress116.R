## select the goooglesheets spreadsheet
cng <- googlesheets::gs_title("cngtweets")

## read the
d <- googlesheets::gs_read(cng, ws = "congress_alldata",
  col_types = c(bioguide = "c"))
congress116 <- dplyr::select(d, bioguide, screen_name_official, screen_name_personal)
usethis::use_data(congress116)
