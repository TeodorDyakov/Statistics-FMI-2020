#load the library
library(MASS)

#find number of males in dataframe na.rm remove the N/A values from the count
sum(survey$Sex == 'Male', na.rm = TRUE)

#number of males who smoke
sum(survey$Sex == 'Male' & survey$Smoke != 'Never', na.rm = TRUE)

#mean height of males
mean(survey$Height, na.rm = TRUE)

