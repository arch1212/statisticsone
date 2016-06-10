#Statistics One, Lecture 6, example Script
#Read Data, plot histograms, get descriptives, examine scatterplots, run correlations

#loading the package
library(psych)

#read the data
impact <- read.table("supplemental-stats1_ex02.txt", header = T)

#Plot the histograms
hist(impact$memory.verbal, xlab = "Verbal Memory", main = "Histogram", col = "red")
hist(impact$memory.visual, xlab = "Visual Memory", main = "Histogram", col = "red")
hist(impact$speed.vismotor, xlab = "Visual Motor Speed", main = "Histogram", col = "red")
hist(impact$speed.general, xlab = "Reaction Time", main = "Histogram", col = "red")
hist(impact$impulse.control, xlab = "Impulse Control", main = "Histogram", col = "red")

#get descriptives
describe(impact)

#scatterplot
plot(impact$memory.verbal ~ impact$memory.visual, main = "Scatterplot", xlab = "Visual Memory", ylab = "Verbal memory")

#regression line through the plot
abline(lm(impact$memory.verbal ~ impact$memory.visual), col = "blue")

#correlation 
cor.test(impact$memory.visual, impact$memory.verbal)

#correlation matrix
cor(impact)