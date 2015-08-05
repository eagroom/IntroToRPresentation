# default naming convention for test functions is test.NameOfFunctionToTest
test.c2f_ValueZero <- function() { 
  #arrange
  
  #act
  result<-c2f(0)
  
  #assert
  checkEquals(result, 32)
}

test.c2f_Value50 <- function() { 
  #arrange
  
  #act
  result<-c2f(10)
  
  #assert
  checkEqualsNumeric(result, 50)
}

test.c2f_ValueStringParam <- function() { 
  #arrange
  
  #act
  checkException(c2f("xx"))
  
  #assert
}

test.c2f_ValueStringEmpty <- function() { 
  #arrange
  
  #act
  checkException(c2f(""))
  
  #assert
}


test.c2f_ValueZeroToShowFailure <- function() { 
  #arrange
  
  #act
  result<-c2f(0)
  
  #assert
  checkEqualsNumeric(result, 75)
}

ThisIsNotATest<-function(){
  checkException(c2f("xx"))  
}