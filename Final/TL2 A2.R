library(tidyverse)
library(lubridate)
library(dplyr)

setwd("~/OneDrive - University of Technology Sydney/2018/Semester 2/Tech Lab 2/Assessments/Ass2/TL2: A2")

countries <- read_csv("Countries.csv")
state <- read_csv("States.csv")
ind <- read_csv("Ind.csv")

leftJoin <- countries %>% 
  left_join(state, by="Country") %>%
  left_join(ind, by=c("State","Country")) %>% 
  select(Country, State, Code, Region, Income,'National Percent', 'State Percent','Ind Percent')

write.csv(leftJoin, "TL2_Dataset.csv")












