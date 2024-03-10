library(dplyr)
library(ggplot2)
setwd("/Users/scottpitcher/Desktop/Courses/R Programming")
data <- read.csv("catsM.csv")%>%
  select(-c(rownames,Sex))


ggplot(data, aes(x = Bwt, y = Hwt)) +
  geom_point() +
  theme_minimal() +
  labs(x = "Body Weight (kg)", y = "Heart Weight (g)", title = "Body Weight vs. Heart Weight")



ggplot(data, aes(x = Bwt)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "white") +
  theme_minimal() +
  labs(x = "Body Weight (kg)", y = "Frequency", title = "Distribution of Body Weights")



ggplot(data, aes(x = "", y = Hwt)) +
  geom_boxplot(fill = "orange", color = "black") +
  theme_minimal() +
  labs(x = "", y = "Heart Weight (g)", title = "Distribution of Heart Weights")
