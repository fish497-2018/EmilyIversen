#Week 7 assignment 

#reads in the data file and names it "fish_data_cat"
fish_data_cat <- read.csv("data7/Gaeta_etal_CLC_data.csv")

library(dplyr)

View(fish_data_cat)

#filtering out all scale lengths < 1
fish_data_cat_2 <- filter(fish_data_cat, scalelength > 1)
View(fish_data_cat_2)

