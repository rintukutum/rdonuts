# rdonuts
---------
Donuts for R-users :)

# inspiRe
---------
## Mike Bostock's Block
- [Donut chart](https://bl.ocks.org/mbostock/3887193)
    + [raw](https://bl.ocks.org/mbostock/raw/3887193/)
- [Donut Multiples](https://bl.ocks.org/mbostock/3888852)
    + [raw](https://bl.ocks.org/mbostock/raw/3888852/)

# Description
-------------
This package is not a wRapper for D3. It provide useRs to create
donuts in existing gRphical space (plot aRea).

# Additional resources
-------------
- usefull r-base functions
    +   [split](https://stat.ethz.ch/R-manual/R-devel/library/base/html/split.html) : Divide into Groups and Reassemble.
    +   [findInterval](https://stat.ethz.ch/R-manual/R-devel/library/base/html/findInterval.html) : Find Interval Numbers or Indices. 
```{r}
###
### split
require(stats); require(graphics)
n <- 10; nn <- 100
g <- factor(round(n * runif(n * nn)))
x <- rnorm(n * nn) + sqrt(as.numeric(g))
xg <- split(x, g)
boxplot(xg, col = "lavender", notch = TRUE, varwidth = TRUE)
###
### findInterval
x <- 2:18
v <- c(5, 10, 15) # create two bins [5,10) and [10,15)
findInterval(x, v)
# [1] 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3
```

