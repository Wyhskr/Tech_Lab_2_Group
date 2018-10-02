library(tidyverse)
library(lubridate)
library(dplyr)

setwd("~/Documents/GitHub/Tech_Lab_2_Group/Files")

df1 <- read_csv("TL2_Region_Average.csv")
df1$Region <- factor(df1$Region, levels=c("East Asia & Pacific", "Europe & Central Asia", "Latin America & Caribbean","Middle East & North Africa", "North America", "South Asia","Sub-Saharan Africa"))

ggplot(data = df1) +
  geom_bar(mapping = aes(x = Region, y = Percentage, fill = Region), stat = "identity")

ggplot(data=df1)+
  geom_bar(aes(x=Income,y=Percentage))+
  facet_wrap(~Region, nrow=3)










