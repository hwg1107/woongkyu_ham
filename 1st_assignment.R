# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Jevin West
# Date:  7/2/2015

#clean variables
rm(list=ls(all=TRUE))

# read in data

D <- read.csv("D:/assignment/2015.ISS/Data Science/7.2/HW/BC Health - PharmaCare Beneficiaries by Age Group, 2010-11.csv")

a1 <- D[D$Population>10000,]

hist(log10(a1$Beneficiaries))

plot(a1$Percentage.of.Age.Group.Receiving.Benefits)
     