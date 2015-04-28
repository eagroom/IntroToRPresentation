---
title       : Intro to R for the C# Developer
subtitle    :  (Use arrow keys to navigate)
author      : Elizabeth Groom
job         : Software Engineer at Cartegraph\Data enthusist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## About me

Elizabeth Groom
Software Engineer Cartegraph in Dubuque since 2003

eamil me: eagroom@yahoo.com  
find this presentation on github at: [https://github.com/eagroom/IntroToRPresentation] (https://github.com/eagroom/IntroToRPresentation)  

`presentaiton built using slidfy in R` 

--- 

## Why this is important

Consider the case study presented by Keith Baggerly [The Anil Potti Story] (http://videolectures.net/cancerbioinformatics2010_baggerly_irrh/)

"Intuition in high through put biology is poor" -Keith Baggerly 

Article: "Genomic signutres to guide the use of chemotherapeutics in the treat of Cancer."
  Auther: Potti et al (2006), 
	Magizine: Nature Medicine, 12:1294-1300

The idea is they developed a tool that can be usedd to predict weather a patient will respond to cheomtherpies by knowing What drugs are most effecitve againast which cells.  

<b>Amazing!</b>

---
## Why Cont.

This was very exicting to M.D. Anderson who asked Baggerly's group to evaluate the Potti group's tools for predicting whether given patients would respond to different chemotherapies

What Baggerly found was poor data anyslis as several steps along the way.  Easy things like mis-labeling of data.  But this caused patients to not get the drugs that it is predicted their cancer would respond best to!

"Intuition in high through put biology is poor" in other words... we need impartial enigeers who care deeply about the process and the math data is currated through so that the doctors can genticis can learn factual things from the data.


---

## What is R

> * R is a system for statistical computation and graphics. It consists of a language `plus a run-time environment with graphics`, a debugger, access to certain system functions, and the ability to run programs stored in script files.

> * R is a dialect of the S language.

> * S is a language that was developed by John Chambers and others at Bell Labs. It was initiated in 1976 as an internal statistical analysis environment-originally implemented as Fortran libraries. (In 1988 the system was rewritten in C)

> * "[W]e wanted users to be able to begin in an interactive environment, where they did not consciously think of themselves as programming. Then as their needs became clearer and their sophistication increased, they should be able to slide gradually into programming, when the language and system aspects would become more important." John Chambers

---

## What is R Cont.

> * In 1991 Ross Ihaka and Robert Gentleman created R

> * Runs on almost any standard computing platform/OS (even on the PlayStation 3)

> * Frequent releases (annual + bugfix releases); active development.

---

## The Tools

* R comes with an IDE.  Its not bad.

* Recommend RStudio. It's `free` and includes alot of great features like syntax highlight, auto compltion and integrated help.

---

## Varible assignment


```r
x<- 1
```

The assignmnet operator is an "<-".  You can read it as "x get's 1


```r
1 -> x #is also valid
```

---

## Two more ways to Assign varibles

> 1. "=".  Works in "most" contexts

```r
x = 1
```

> 2. assign function

```r
assign("x", 1)
```

> This leads me to the first thing that i learned the hard way about R. `There are at least 3 ways to do any one thing in R and thye work in "most" context.`

---

## Auto print

To print out our value of x:


```r
x<- 10
x
```

```
## [1] 10
```
---
## vectors

Notice how X prints out : [1] 10

The simplest structure in R is the numeric vector. The number in brackets denotes the number of items in the vector.  

We can check the vertor type with the funciton class


```r
x
```

```
## [1] 10
```

```r
class(x)
```

```
## [1] "numeric"
```

R has five basic or "atomic" classes of objects:
* character
* numeric (real numbers)
* integer
* complex
* logical (True/False)

A vector can only contain objects of the same class

---

## Data frames - The most useful object

A data rame for all intents nad purposes in a table.
> * Each columns is a vecotr of the same type, but each column can be differnt
> * Each column has the same length
> * Columns can have labels
Lets Check out one of the the sample Data sets in R: mtCars

---
## Data frames

Data Frames have some helpful functions to help you get to know your data:

The str function: displays the strucutrue of an object


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

The summary function: dipslays some sommary information about the object

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

Head and Tail funcation let you see the top, or bottom rows of data.  By defualt they show 6 rows.

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

```r
tail(mtcars)
```

```
##                 mpg cyl  disp  hp drat    wt qsec vs am gear carb
## Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.7  0  1    5    2
## Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.9  1  1    5    2
## Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.5  0  1    5    4
## Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.5  0  1    5    6
## Maserati Bora  15.0   8 301.0 335 3.54 3.570 14.6  0  1    5    8
## Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.6  1  1    4    2
```
-----

## packages

> * A package is
> * there are currently  ____ packages available on CRAN
>* some of my favorite packes i have found along the way

---

## Packages Cont.

To use a package 
instal
lirbary

in a rerun script use function rquire

---

## Reading data from a file

read.csv and read.table both by defualt create data frames

---


#Questions?
-----


install.packages("devtools")
library(devtools)
#install_github("slidify", "ramnathv")
#install_github("slidifyLibraries", "ramnathv")
library(slidify)

slidify("index.Rmd")
---




