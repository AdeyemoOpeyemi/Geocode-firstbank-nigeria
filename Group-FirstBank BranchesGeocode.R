# install.packages("readxl")   # Run this once
library(readxl)

FirstBank_branches <- read_excel("FirstBank Dataset.xlsx")
FirstBank_branches


names(FirstBank_branches)

#usethis::edit_r_environ()
# install.packages("tidygeocoder")   # Run this once
library(tidygeocoder)
# install.packages("tidyverse")   # Run this once
library(tidyverse)


# Set your Google Geocoding API key as an environment variable before running this script.
# For example, in your .Renviron file, add the following line:
# GOOGLEGEOCODE_API_KEY = 'YOUR_API_KEY'
# Alternatively, you can run the following line in your R console before executing the script:
# Sys.setenv(GOOGLEGEOCODE_API_KEY = 'YOUR_API_KEY')


geo_code_FirstBank <- FirstBank_branches %>%
  #Geocode Address to lat/Lon
  tidygeocoder::geocode(
    address = 'BRANCH ADDRESS',
    method = 'google'
  )
geo_code_FirstBank
glimpse(geo_code_FirstBank)

#Plot Map Observation
# install.packages("sf")
# install.packages("mapview")
library(sf)
library(mapview)
FirstBank_branches <- geo_code_FirstBank %>%
  drop_na(long, lat) %>%
  st_as_sf(
    coords = c("long", "lat"),
    crs = 4326
  )
mapview(FirstBank_branches)
mapview(FirstBank_branches)@map
