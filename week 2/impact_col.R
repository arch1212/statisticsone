#Statistics one, Lecture 6, example script
#Test/ re-Test reliability analysis, column format

#load the psych library
library(psych)

#read the dataframe with 40 rows for 40 athletes and 10 columns
impact.col <- read.table("supplemental-stats1_ex03_col.txt", header = T)

#correlation in test A and test B
cor(impact.col$memory.verbal.A, impact.col$memory.verbal.B)
cor(impact.col$memory.visual.A, impact.col$memory.visual.B)
cor(impact.col$speed.vismotor.A, impact.col$speed.vismotor.B)
cor(impact.col$speed.general.A, impact.col$speed.general.B)
cor(impact.col$impulse.control.A, impact.col$impulse.control.B)
