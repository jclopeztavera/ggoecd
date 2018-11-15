#' Getting emojis for displaying country data
#' Thanks to Tim Whitlock for the convenient table contaning
#'    - ISO codes,
#'    - Country names
#'    - Flags

# This code is included for reproducibility and future development purposes,
# It is not bundled in the package.

# Getting the required packages ---------------------------
if (!require(rvest)) {
  install.packages("rvest")
}
library(rvest)

# Scrapping the table from Tim's webpage ---------------------------
url <- "https://apps.timwhitlock.info/emoji/tables/iso3166"
emojis <- url %>%
  read_html() %>%
  html_nodes(xpath = "/html/body/div[2]/div/div[1]/table") %>%
  html_table()

country_emojis <- emojis[[1]]

# Renaming the data ---------------------------
names(country_emojis) <-
  c("ISO", "emoji", "unicode", "country_name")

# Saving the data ---------------------------
save(country_emojis, file = "data/country_emojis.RData")
