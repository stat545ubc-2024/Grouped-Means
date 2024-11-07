
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Group.Means

<!-- badges: start -->
<!-- badges: end -->

The goal of Group.Means is to calculate the mean of a variable of
specified groups

## Installation

You can install the development version of Group.Means by accessing the
online repository like so:

``` r

devtools::install_github("stat545ubc-2024/Grouped-Means")
#> Using GitHub PAT from the git credential store.
#> Downloading GitHub repo stat545ubc-2024/Grouped-Means@HEAD
#> glue  (1.7.0 -> 1.8.0) [CRAN]
#> withr (3.0.1 -> 3.0.2) [CRAN]
#> Installing 2 packages: glue, withr
#> Installing packages into 'C:/Users/julia/AppData/Local/Temp/RtmpiwQY27/temp_libpath79346a0e2275'
#> (as 'lib' is unspecified)
#> package 'glue' successfully unpacked and MD5 sums checked
#> package 'withr' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\julia\AppData\Local\Temp\RtmpEBHo4w\downloaded_packages
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>       ✔  checking for file 'C:\Users\julia\AppData\Local\Temp\RtmpEBHo4w\remotes22fc52a7772b\stat545ubc-2024-Grouped-Means-3f56347/DESCRIPTION'
#>       ─  preparing 'Group.Means':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>       ─  building 'Group.Means_1.0.0.0.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/julia/AppData/Local/Temp/RtmpiwQY27/temp_libpath79346a0e2275'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Group.Means)
library(gapminder)
#Finding the average life expectancy by country in the gapminder dataset
answer1.0 <-group_mean(gapminder, country, lifeExp)
print(answer1.0)
#> # A tibble: 142 × 2
#>    country      mean
#>    <fct>       <dbl>
#>  1 Afghanistan  37.5
#>  2 Albania      68.4
#>  3 Algeria      59.0
#>  4 Angola       37.9
#>  5 Argentina    69.1
#>  6 Australia    74.7
#>  7 Austria      73.1
#>  8 Bahrain      65.6
#>  9 Bangladesh   49.8
#> 10 Belgium      73.6
#> # ℹ 132 more rows
```
