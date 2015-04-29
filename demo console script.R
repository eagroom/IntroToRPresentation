#Demo
setwd("C:\\Users\\Elizabeth\\Documents\\IntroToR\\IntroToRPresentation")
surveyResults<-read.csv("Full Results - Stack Overflow Developer Survey - 2015.csv")
str(surveyResults)

#age is a factor so we have to convert so lets take a look at the levels
levels(surveyResults$Age)

#how many items per level?

#googled and found ddply in the plyr package, which takes a function as a parameter

#let's use the dplyr package 
# -this package has A set of tools that solves a common set of problems
# packages can be thought of as libraries

install.packages("plyr") #don't actually do
library(plyr)

?ddply

ddply(surveyResults, "Age", summarise, num = length(Age))

#or as i found out you can just do this: count(surveyResults$Age)