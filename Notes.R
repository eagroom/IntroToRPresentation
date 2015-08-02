

C:/Users/Elizabeth/Documents/IntroToR/IntroToRPresentation/index.html?presentme=true

install.packages("devtools")
install_github("slidify", "ramnathv")
install_github("slidifyLibraries", "ramnathv")
library(devtools)
library(slidify)

slidify("index.Rmd")

