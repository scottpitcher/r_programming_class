library(dplyr)
# Inserting the data into a dataframe
data <- data.frame(
  Freq = c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2),
  bloodp = c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176),
  first = c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1),
  second = c(0, 0, 1, 1, 0, 1, 1, 1, 1, 1),
  finaldecision = c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
)

# Convert datatypes
num <- c("first", "second", "finaldecision")

data_clean <- data%>%
  mutate_at(vars(num), ~as.numeric(.))

#Your first assignment: Create a side-by-side boxplot (boxplot(x, ...)) and and histogram ((hist(x, ...)). 
attach(data_clean)

boxplot(bloodp ~ finaldecision, data = data, col = c("red", "blue"), main = "Blood Pressure by Doctor's Assessment",
        xlab = "Doctor's Assessment (bad = 1, good = 0)", ylab = "Blood Pressure")
cat("As would make sense, higher blood pressured were seen in the bad final assesment")

# Histogram
hist(bloodp, main = "Histogram of Blood Pressure", xlab = "Blood Pressure", col = "skyblue", border = "black")
hist(finaldecision, main = "Histogram of Blood Pressure", xlab = "Blood Pressure", col = "skyblue", border = "black")
