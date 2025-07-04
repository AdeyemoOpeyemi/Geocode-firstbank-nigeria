
install.packages("readxl")   # Run this once
library(readxl)

FirstBank_branches <- read_excel("C:/Users/USER/Downloads/FirstBank Dataset.xlsx")
FirstBank_branches


names(FirstBank_branches)

#usethis::edit_r_environ()
install.packages("tidygeocoder")   # Run this once
library(tidygeocoder)
install.packages("tidyverse")   # Run this once
library(tidyverse)


sys <-  Sys.setenv(GOOGLEGEOCODE_API_KEY = 'AIzaSyAq19IvlZspProgtOXeqQcC1cpTqve4HG0')


geo_code_FirstBank <- FirstBank_branches %>%
  #Geocode Address to lat/Lon
  tidygeocoder::geocode(
    address = 'BRANCH ADDRESS',
    method = 'google'
  )
geo_code_FirstBank
glimpse(geo_code_FirstBank)

#Plot Map Observation
install.packages("sf")
install.packages("mapview")
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

