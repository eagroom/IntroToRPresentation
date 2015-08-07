#Demo
setwd("C:\\Users\\Elizabeth\\Documents\\GitHub\\IntroToRPresentation")
#getwd returns an absolute filepath representing the current working directory of the R process; 
#  setwd(dir) is used to set the working directory to dir.

#read.table you set the sep ect.
surveyResults<-read.csv("Full Results - Stack Overflow Developer Survey - 2015.csv")
str(surveyResults)


#age is a factor so we have to convert so lets take a look at the levels
levels(surveyResults$Age)

#how many items per level?

#googled and found ddply in the plyr package, which takes a function as a parameter

#let's use the dplyr package 
# -this package has A set of tools that solves a common set of problems
# packages can be thought of as libraries
?
#install.packages("plyr") #don't actually do durring demo because it takes a second to do
library(plyr)

?ddply

ddply(surveyResults, "Age", summarise, num = length(Age))


#or as i found out you can just do this: count(surveyResults$Age)
  #Count the number of occurences.

data<-ddply(surveyResults, "Age", summarise, num = length(Age))
barplot(data$num, names.arg=data$Age)


