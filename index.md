---
title       : Intro to R for the C# Developer
subtitle    : Use the Arrow keys to navigate
author      : Elizabeth Groom
job         : 
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

"Intuition in high through put biology is poor" Keith Baggerly 

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

> * [W]e wanted users to be able to begin in an interactive environment, where they did not consciously think of themselves as programming. Then as their needs became clearer and their sophistication increased, they should be able to slide gradually into programming, when the language and system aspects would become more important." John Chambers

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

The simplest such structure is the numeric vector. The number in brackets denotes the number of items in the vector.  

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

## Data frames
install.packages("devtools")
library(devtools)
#install_github("slidify", "ramnathv")
#install_github("slidifyLibraries", "ramnathv")
library(slidify)

slidify("index.Rmd")
---




