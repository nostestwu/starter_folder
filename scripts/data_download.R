#### Preamble ####
# Purpose: Download data from opendatatoronto
# Author: Zecheng Wu
# Data: 31 January 2022
# Contact: zbill.wu@mail.utoronto.ca
# License: MIT



#### Workspace setup ####

library(tidyverse)
library(opendatatoronto)

#### Data download ####
# From https://open.toronto.ca/dataset/toronto-shelter-system-flow/


library(opendatatoronto)
library(dplyr)


# get all resources for this package
resources <- list_package_resources("ac77f532-f18b-427c-905c-4ae87ce69c93")


# There is only one resource and get_resource will load that. 
# If there is more than one resource then need to either filter or specify

monthly_shelter_usage <- 
  resources %>% 
  get_resource()


#### save data ####
write.csv(monthly_shelter_usage, "inputs/data/monthly_shelter_usage.csv")



# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
                     )
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)
rm(raw_data)
         

#### What's next? ####



         