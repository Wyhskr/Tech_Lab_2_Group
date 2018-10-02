setwd("C:/Users/aless/Desktop/Tech Lab 2/Tech Lab Assignment 2")

TL2_Dataset <- read.csv("TL2_Dataset.csv")

library(tidyverse)
library(lubridate)
library(ggplot2)

  
  ggplot(data=TL2_Dataset, aes(x=State, y=Percent, fill=Population)) +
    geom_bar(stat="identity", position=position_dodge())
  