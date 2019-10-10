# Workspace Directory
setwd("C:/Users/Anitha/Desktop/Fall 2019/Adv-Stat/WorkSpace")

# Reading the data from csv file
seedData <- read.csv("Seed_Sheet_New.csv")

# view the data fron the read csv
View(seedData)

# tidyverse Library
library(tidyverse)

#Scattered Plot:
ggplot(data= seedData) + geom_point(mapping= aes (x = Origin, y = Species))
ggplot(data= seedData) + geom_point(mapping= aes (x=Species, y = Field_ID))
ggplot(data= seedData) + geom_point(mapping= aes (x=Origin, y = LiveSeed_Concentration))
ggplot(data= seedData) + geom_point(mapping= aes (x=Field_ID, y = LiveSeed_Concentration))

#3 Variable Scattere Plot:
ggplot(data= seedData) + geom_point(mapping= aes (y=Origin, x = LiveSeed_Concentration, color=Species))

#Facet Plot:
ggplot(data= seedData) + geom_point(mapping= aes (y=LiveSeed_Concentration, x = Field_ID)) + facet_grid(.~Origin)

# Bar Chart
Origin.data <- table(seedData$Origin) 
barplot(Origin.data, main ="Species Origin" , xlab = "Origin", ylab ="Count" , border= NA) 

