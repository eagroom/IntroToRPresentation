setwd("C:\\Users\\Elizabeth\\Documents\\GitHub\\IntroToRPresentation")
install.packages("RUnit")
library(RUnit)

#step 1. write the code you want to test (or at least a stub if doing test first deisgin)
c2f <- function(c) return(9/5 * c + 32) #converts centigrade to Fahrenheit

#step 2. Build a test function containing several checks to be made
  #see file: tests\runit.c2fTest.R

#step 3 run the test in jsut one file or 
  testResult <- runTestFile("tests\\runit.c2fTest.R")

  #create a test suite. This is a a collection of test functions and files relating to one topic
  testsuite.c2f <- defineTestSuite("demo", dirs = file.path("tests")) #dirs = directory where to look for test files
    #defualts:
      #testFileRegexp = "^runit.+\\.[rR]$
      #testFuncRegexp = "^test.+"

  #then run the suite
  testResult <- runTestSuite(testsuite.c2f)

#step 5 examine the results
printHTMLProtocol(testResult, fileName = "TestResults.html")

