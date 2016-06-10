#Statistics one, Lecture 6, example script
#Test/ re-Test reliability analysis, row format

#load the psych library
library(psych)

#read the dataframe with 40 rows for 40 athletes and 10 columns
impact.row <- read.table("supplemental-stats1_ex03_row.txt", header = T)

#get descriptive statistics group wise
describeBy(impact.row, impact.row$test)

#split the dataframe
impact.row <- split(impact.row, impact.row$test)

#get the correlation
cor(impact.row$A$memory.verbal, impact.row$B$memory.verbal)
cor(impact.row$A$memory.visual, impact.row$B$memory.visual)
cor(impact.row$A$speed.vismotor, impact.row$B$speed.vismotor)
cor(impact.row$A$speed.general, impact.row$B$speed.general)
cor(impact.row$A$impulse.control, impact.row$B$impulse.control)
