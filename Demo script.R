if (!require("ggplot2")) {
  install.packages("ggplot2")
  require("ggplot2")
}

setwd("C:\\Users\\Elizabeth\\Documents\\IntroToR\\IntroToRPresentation")
surveyResults<-read.csv("Full Results - Stack Overflow Developer Survey - 2015.csv")

print(countriesOfOver60(surveyResults))




countriesOfOver60 <- function(fulldataFrame)
{
  #first shrink the data set down to jsut what we need
  over60data <- subset(fulldataFrame, fulldataFrame$Age == "> 60")
}

124