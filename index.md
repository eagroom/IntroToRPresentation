---
title       : Intro to R for the C# Developer
subtitle    :  (Use arrow keys to navigate)
author      : Elizabeth Groom
job         : Software Engineer at Cartegraph\Data enthusiast
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## About me

Elizabeth Groom
Software Engineer Cartegraph in Dubuque

email me: eagroom@yahoo.com  
find this presentation on github at: [https://github.com/eagroom/IntroToRPresentation] (https://github.com/eagroom/IntroToRPresentation)  

`presentation built using slidfy in R` 

--- 

## Why this is important

Consider the case study presented by Keith Baggerly [The Anil Potti Story](http://videolectures.net/cancerbioinformatics2010_baggerly_irrh/)

Article: "[Genomic signatures to guide the use of chemotherapeutics.](http://www.nature.com/nm/journal/v12/n11/abs/nm1491.html)"
  Auther: Potti et al (2006), 
  Magazine: Nature Medicine, 12:1294-1300

The idea is they developed a tool that can be used to predict weather a patient will respond to chemotherapies by knowing what drugs are most effective against which cells.  

<b>Amazing!</b>

---

## Why Cont.

This was very exciting to the MD Anderson Cancer Center.  They asked Baggerly's group to evaluate this new tool.

What Baggerly found was poor data analysis as several steps along the way.  Easy things like miss labeling of data.  This caused patients to not get the drugs that it is predicted their cancer would respond best to!

"Intuition in high through put biology is poor" -Keith Baggerly 

In other words... we need impartial engineers who care deeply about the process and the math the data is curated through so that doctors, geneticist, ect. can learn factual things from the data and draw accurate conclusions.

---

## What is R

* R is an <b>interactive</b> system for statistical computation and graphics. It consists of a language `plus a run-time environment with graphics`, a debugger, and the ability to run programs stored in script files. It is open source.

> * R is a dialect of the S language.

> * S is a language that was developed by John Chambers and others at Bell Labs. It was initiated in 1976 as an internal statistical analysis environment-originally implemented as Fortran libraries. (In 1988 the system was rewritten in C)

> * "[W]e wanted users to be able to begin in an <b>interactive</b> environment, where they did not consciously think of themselves as programming. Then as their needs became clearer and their sophistication increased, they should be able to <b>slide gradually into programming</b>, when the language and system aspects would become more important." John Chambers

---

## What is R Cont.

* In 1991 Ross Ihaka and Robert Gentleman created R

* Runs on almost any standard computing platform/OS (even on the PlayStation 3)

* Frequent releases (annual + bugfix releases); active development.

---

## The Tools

* R comes with an IDE.  Its not bad.

* Recommend RStudio. It's <b>`free`</b> and includes a lot of great features, similar to a scaled down visual studio, like syntax highlighting, auto completion and integrated help.  
  [http://www.rstudio.com/](http://www.rstudio.com/)

---

## Variable assignment


```r
x<- 1
```

The assignment operator is an "<-".  You can read it as "x gets 1"


```r
1 -> x #is also valid
```

---

## Two more ways to assign variables

"=".  Works in "most" contexts

```r
x = 1
```

assign function

```r
assign("x", 1)
```

This leads me to the first thing that I learned the hard way about R. `There are at least 3 ways to do any one thing in R and they each work in "most" contexts.`

---

## Auto print

To print out value of x:


```r
x<- 10
x
```

```
## [1] 10
```

---

## Vectors

Notice how X prints out : [1] 10

The simplest structure in R is the numeric vector. The number in brackets denotes the number of items in the vector.  

---

## Vectors cont.

R has five basic classes of objects:
* character
* numeric (real numbers)
* integer
* complex
* logical (True/False)  
And...  
* Factors

A vector can only contain objects of the same class

---

## Vectors

We can check the vector type with the function class


```r
class(x)
```

```
## [1] "numeric"
```

you might have expected 10 to be an integer but in R an integer is denoted with an `L`


```r
x<-10L
 class(x)
```

```
## [1] "integer"
```

---

## Vector Math

The fact that Vectors are the simplest structure makes vector math intrinsic to the application.


```r
x<-sample(1:20, 5)
x
```

```
## [1] 19  3 11  5 13
```

```r
x - 4
```

```
## [1] 15 -1  7  1  9
```

---

## Vector Math

The previous example might seem contrived example, but consider if you want to normalize data in preparation for fitting a regression model


```r
#center the data by subtracting the mean
xc<-x-mean(x)

#scale the data by dividing by the standard deviation
xn<-xc/sd(x)

xn
```

```
## [1]  1.3709893 -1.1217185  0.1246354 -0.8101300  0.4362239
```

---

## Data frames - The most useful object

A data frame for all intents and purposes is a table.
* Each columns is a vector
* Each column has the same length
* Columns can have labels

Let's Check out one of the sample datasets in R: mtCars

---

## Data frames

Head and Tail function let you see the top, or bottom rows of data.  By default they show 6 rows.

```r
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

---

## Data frames


```r
tail(mtcars, 4)
```

```
##                 mpg cyl disp  hp drat   wt qsec vs am gear carb
## Ford Pantera L 15.8   8  351 264 4.22 3.17 14.5  0  1    5    4
## Ferrari Dino   19.7   6  145 175 3.62 2.77 15.5  0  1    5    6
## Maserati Bora  15.0   8  301 335 3.54 3.57 14.6  0  1    5    8
## Volvo 142E     21.4   4  121 109 4.11 2.78 18.6  1  1    4    2
```

---


## Data frames

Data Frames have some helpful functions to help you get to know your data:

The str function: displays the structure of an object

```r
str(mtcars)
```

```
## 'data.frame':	32 obs. of  11 variables:
##  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
##  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
##  $ disp: num  160 160 108 258 360 ...
##  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
##  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
##  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
##  $ qsec: num  16.5 17 18.6 19.4 17 ...
##  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
##  $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
##  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
##  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

---

## Data frames

The summary function: displays some summary information about the object

```r
summary(mtcars)
```

```
##       mpg             cyl             disp             hp       
##  Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
##  1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
##  Median :19.20   Median :6.000   Median :196.3   Median :123.0  
##  Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
##  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
##  Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
##       drat             wt             qsec             vs        
##  Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
##  1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
##  Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
##  Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
##  3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
##  Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
##        am              gear            carb      
##  Min.   :0.0000   Min.   :3.000   Min.   :1.000  
##  1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
##  Median :0.0000   Median :4.000   Median :2.000  
##  Mean   :0.4062   Mean   :3.688   Mean   :2.812  
##  3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
##  Max.   :1.0000   Max.   :5.000   Max.   :8.000
```

---

## Data frames 

Quick review of terms form the summary:

* 1st Qu. = the first quantile- means 25% observations are below this   
* 3rd Qu. = the third quantile - means 75% observations are below this  
* Median = the middle point. Half the numbers are above this value  
* Mean = average  

---

## Data frames

Let's confirm the mean of the miles per gallon column (20.09). To get the just the mpg column we use the $


```r
 mtcars$mpg
```

```
##  [1] 21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 17.8 16.4 17.3 15.2
## [15] 10.4 10.4 14.7 32.4 30.4 33.9 21.5 15.5 15.2 13.3 19.2 27.3 26.0 30.4
## [29] 15.8 19.7 15.0 21.4
```

then we can sum the column and get its length


```r
sumMPG <- sum(mtcars$mpg)
lengthMPG <- length(mtcars$mpg)

sumMPG/lengthMPG
```

```
## [1] 20.09062
```

---

## Data frames


```r
round(sumMPG/lengthMPG, 2)
```

```
## [1] 20.09
```

Perfect!  That matches the summary value of 20.09

---

## Packages

 * Packages extend the functionality of R.  

> * They can be equated to libraries in .Net

> * There are currently packages available on the cran 6,871

> * first time you access a package you need to install it: install.packages("packageName")

> * load the package into memory when you need to use it: library(packageName)  

> * Packages may need to be updated as R upgrades

---

## NA

* When a value in a column is blank.
* We can equate them to null values.
* Us the function is.na(vector) to find the na's
* is.na returns a Boolean vector of true and false for if the values is na or not
* can use sum to get a count of na's because true = 1 and false = 0


```r
x<- c(5, NA, 6, 10, 11)

is.na(x)
```

```
## [1] FALSE  TRUE FALSE FALSE FALSE
```

```r
sum(is.na(x))
```

```
## [1] 1
```

---

## NA

* some function have trouble with na's so you must tell them what to do with the Na's



```r
x<- c(5, NA, 6, 10, 11)

mean(x)
```

```
## [1] NA
```

```r
mean(x, na.rm = TRUE)
```

```
## [1] 8
```

---

## A real Data set

Let's take a look at the stack overflow developer survey results from the 2015 
[Stack overflow Developer Survey](http://stackoverflow.com/research/developer-survey-2015)

Demo of using the Console

---

## Reusable scripts

Now let's say I am interested in what countries the over 60 crowd are in.

Demo the reusable script functions.

---

## lapply, sapply, tapply

looping is great, but R is an interactive language, multi-line loops in the console would be hard, what's a statistician to do?

To the rescue... the applies!

* lapply(): Loop over a list and evaluate a function on each element  
* sapply(): Same as lapply but try to simplify the result  
* apply(): Apply a function over the margins of an array  
* tapply(): Apply a function over subsets of a vector  
* mapply(): Multivariate version of lapply  

---

## Scoping and free variables in R


Consider the function:


```r
f <- function(x, y) {
  x + y - z
}
```
This function has 2 formal arguments x and y. In the body of the function there is another symbol z. In this case z is called a `free variable`. The scoping rules of a language determine how values are assigned to free variables. `R uses lexical scoping.` 

Free variables are not formal arguments and are not local variables. The values of free variables are searched for in the environment in which the function was defined.

---

## Scoping and free variables in R

When R tries to bind a value to a symbol, it searches through a series of `environments` to find the appropriate value. When you are working on the command line and need to retrieve the value of an R object, the order is roughly

1. Search the global environment for a symbol name matching the one requested.  
2. Search the namespaces of each of the packages on the search list  

The search list can be found by using the `search` function.

---

## Summary

 "As you might be aware, R language is an open-source language for programmers, and the language is the product of collaborative evolution from a combination of brilliant minds too numerous to count. Maybe the best result of this is that R Language compilers have been designed keeping a newbie programmer in mind, which makes it an easy language to adapt. However, numerous minds bring numerous differences as well..."
 
 -[Laran Joseph](https://blog.udemy.com/r-tutorial)

---

## Want to get started?

1. [Install R binaries from the CRAN: http://cran.r-project.org](http://cran.r-project.org/)
2. [Install RStudio] (http://www.rstudio.com/)
3.  Start learning more:   
  * [Learn R in R: swirl](http://swirlstats.com/)  
  * [http://www.rstudio.com/resources/training/online-learning/](http://www.rstudio.com/resources/training/online-learning/)  
  * [http://tryr.codeschool.com/](http://tryr.codeschool.com/)  
  * [Coursera Data Science Specialization](https://www.coursera.org/specialization/jhudatascience/1)

---
## Questions?

Feel free to contact me and I will help if I can!  

email me: eagroom@yahoo.com  
find this presentation on github at: [https://github.com/eagroom/IntroToRPresentation] (https://github.com/eagroom/IntroToRPresentation)  
