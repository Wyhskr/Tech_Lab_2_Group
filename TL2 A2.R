library(tidyverse)
library(lubridate)
library(dplyr)

setwd("~/OneDrive - University of Technology Sydney/2018/Semester 2/Tech Lab 2/Assessments/Ass2/TL2: A2")

countries <- read_csv("MJ.csv")
state <- read_csv("RW.csv")
state2 <- read_csv("RW2.csv")
state3 <- read_csv("RW3.csv")

fullJoin <- countries %>% 
  full_join(state2, by="Percent") %>%
  full_join(countries, by="Percent") %>% 
  select(Country, State, Percent)

