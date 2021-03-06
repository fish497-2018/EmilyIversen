#Week 7 assignment 

#reads in the data file and names it "fish_data_cat"
fish_data_cat <- read.csv("data7/Gaeta_etal_CLC_data1.csv")

library(dplyr)

View(fish_data_cat)

#filtering out all scale lengths < 1
fish_data_cat_2 <- filter(fish_data_cat, scalelength > 1)
View(fish_data_cat_2)

#renamed the data frame by selecting it in the bottom right window and hitting "rename"

#if you save something that you wish you didn't, you can revert it in the upper right pane


#Exercise 5

library(ggplot2)

#making a scatterplot comparing fish length and scale length and coloring them by lake ID
ggplot(data = fish_data_cat_2, mapping = aes(x = length, y = scalelength, color = lakeid)) +
  geom_point()

#This is Steven's code I pulled from GitHub:

#what about this
ggplot(fish_data_cat, aes(x = scalelength, fill = length)) +
  geom_histogram()


#Here are my edits of Steven's code (Exercise 6)
scale_hist_by_length <- ggplot(fish_data_cat, aes(x = scalelength, fill = length)) +
  geom_histogram(bins = 80)

ggsave("scale_hist_by_length.jpeg")             


            