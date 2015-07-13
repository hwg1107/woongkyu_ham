install.packages("ggplot2")
library(ggplot2)

D1 <- read.csv("D:/assignment/2015.ISS/Data Science/Group_Project/final/issdata.csv", header = T)

qplot(indianPerCap, ViolentCrimesPerPop, data=D1, color="pink")

p <- qplot(indianPerCap, ViolentCrimesPerPop, data = D1)

#Calculate slope and intercept of line of best fit
coef(lm(ViolentCrimesPerPop ~ indianPerCap, data = D1))

p + geom_abline(intercept = 0.3, slope = -0.13, color="hotpink")

