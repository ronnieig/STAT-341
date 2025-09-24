#Author: Ronald Britt Jr
#Date: September 23rd, 2025 (09/23/2025)
#Purpose:

#Load library dplyr)
library(dplyr)

#Read dummy dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

#Load the data poisons.csv
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE)) 
df
head(df)

glimpse(df)
