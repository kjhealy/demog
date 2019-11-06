---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# demog

<!-- badges: start -->
<!-- badges: end -->

Some demographic data

## Installation

`demog` is a data package.

### Install direct from GitHub

You can install the beta version of demog from [GitHub](https://github.com/kjhealy/demog) with:

``` r
devtools::install_github("kjhealy/demog")
```

### Installation using `drat`

While using `install_github()` works just fine, it would be nicer to be able to just type `install.packages("demog")` or `update.packages("demog")` in the ordinary way. We can do this using Dirk Eddelbuettel's [drat](http://eddelbuettel.github.io/drat/DratForPackageUsers.html) package. Drat provides a convenient way to make R aware of package repositories other than CRAN.

First, install `drat`:


```r
if (!require("drat")) {
    install.packages("drat")
    library("drat")
}
```

Then use `drat` to tell R about the repository where `demog` is hosted:


```r
drat::addRepo("kjhealy")
```

You can now install `demog`:


```r
install.packages("demog")
```

To ensure that the `demog` repository is always available, you can add the following line to your `.Rprofile` or `.Rprofile.site` file:


```r
drat::addRepo("kjhealy")
```

With that in place you'll be able to do `install.packages("demog")` or `update.packages("demog")` and have everything work as you'd expect. 

Note that the drat repository only contains data packages that are not on CRAN, so you will never be in danger of grabbing the wrong version of any other package.


## Loading the data

The package works best with the [tidyverse](http://tidyverse.org/) libraries.


```r
library(tidyverse)
```

Load the data:


```r
library(demog)
#> Error in library(demog): there is no package called 'demog'
```



```r
britain
#> Error in eval(expr, envir, enclos): object 'britain' not found
```

## Example



