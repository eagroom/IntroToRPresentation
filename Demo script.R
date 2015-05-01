#same as library(plyr) but returns a bool so you cna install it if its not
#if (!require("plyr")) { 
#  install.packages("plyr")
#  require("plyr")
#}

main <- function(){
setwd("C:\\Users\\Elizabeth\\Documents\\IntroToR\\IntroToRPresentation")
surveyResults<-read.csv("Full Results - Stack Overflow Developer Survey - 2015.csv")

#maybe show memory

print(countriesOfOver60(surveyResults))

}

countriesOfOver60 <- function(fulldataFrame){
  #first shrink the data set down to jsut what we need
  over60data <- subset(fulldataFrame, fulldataFrame$Age == "> 60")
  
  unquieCountries <- c()
  for (i in seq(along = over60data$Country)) {
    country <- as.character(over60data$Country[i])
    
    if (!country %in% unquieCountries)
    {
      unquieCountries <- c(unquieCountries, country)
    }
  }
  
  unquieCountries 
}

