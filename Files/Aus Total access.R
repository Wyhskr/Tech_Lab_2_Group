install.packages(tidyverse)
library(tidyverse) 


df1 <- read_csv("AUS TOTAL.csv")

ggplot(data = df1) +
  geom_bar(mapping = aes(x = State, y=`% of Population`), stat="identity")
