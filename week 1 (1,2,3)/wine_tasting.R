#Lecture 3 example, Wine tasting
#Read table, plot histograms, get descreptives

#read the data
ratings <- read.table("stats1_ex01.txt", header = TRUE)

#explore the data
class(ratings)
names(ratings)

#for a single histogram
hist(ratings$RedTruck, xlab = "Ratings")

#Create the setup for 4 histograms
layout(matrix(c(1,2,3,4), 2, 2, byrow = TRUE))

#plot the histograms
hist(ratings$RedTruck, xlab = "Ratings")
hist(ratings$WoopWoop, xlab = "Ratings")
hist(ratings$HobNob, xlab = "Ratings")
hist(ratings$Fourplay, xlab = "Ratings")