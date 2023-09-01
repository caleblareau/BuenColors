<!-- README.md is generated from README.Rmd. Please edit that file -->
NULL [![License: MIT + file
LICENSE](https://img.shields.io/badge/license-MIT%20+%20file%20LICENSE-blue.svg)](https://cran.r-project.org/web/licenses/MIT%20+%20file%20LICENSE)
[![](https://img.shields.io/badge/devel%20version-0.5.6-black.svg)](https://github.com/caleblareau/BuenColors)
[![](https://img.shields.io/github/languages/code-size/caleblareau/BuenColors.svg)](https://github.com/caleblareau/BuenColors)
[![](https://img.shields.io/github/last-commit/caleblareau/BuenColors.svg)](https://github.com/caleblareau/BuenColors/commits/master)
<br> [![R build
status](https://github.com/caleblareau/BuenColors/workflows/rworkflows/badge.svg)](https://github.com/caleblareau/BuenColors/actions)
[![](https://codecov.io/gh/caleblareau/BuenColors/branch/master/graph/badge.svg)](https://app.codecov.io/gh/caleblareau/BuenColors)
<br>
<a href='https://app.codecov.io/gh/caleblareau/BuenColors/tree/master' target='_blank'><img src='https://codecov.io/gh/caleblareau/BuenColors/branch/master/graphs/icicle.svg' title='Codecov icicle graph' width='200' height='50' style='vertical-align: top;'></a>
<h4>
Authors: <i></i>
</h4>

# BuenColors

A package that facilitates nice colors created for the [Buenrostro
Lab](https://buenrostrolab.com). The base of the package including some
divergent color schemes were taken from the
[wesanderson](https://github.com/karthik/wesanderson) package. This
README provides a quick overview of how to use the color schemes with
ggplot2 and which palettes are available.

## Installation

``` r
devtools::install_github("caleblareau/BuenColors")
```

## Color Palettes

``` r
library(BuenColors)
```

With the library loaded, just type this to get either the `continuous`
or `discrete` (by default) palette printed in your `plot` console.

``` r
jdb_palette("FantasticFox")
```

![](figure/example-1.png)

``` r
jdb_palette("aqua_brick", type = "continuous")
```

![](figure/example-2.png)

### Here are all the names that are available…

    #>   [1] "algae_earth"    "aqua_brick"     "aqua_tan"       "berry"         
    #>   [5] "blue_cyan"      "BottleRocket"   "BottleRocket2"  "brewer_blue"   
    #>   [9] "brewer_celsius" "brewer_fire"    "brewer_green"   "brewer_heat"   
    #>  [13] "brewer_jamaica" "brewer_marine"  "brewer_orange"  "brewer_purple" 
    #>  [17] "brewer_red"     "brewer_spectra" "brewer_violet"  "brewer_yes"    
    #>  [21] "calma_azules"   "calma_bosque"   "calma_manudo"   "calma_marino"  
    #>  [25] "calma_morado"   "calma_musgos"   "Cavalcanti"     "Chevalier"     
    #>  [29] "china_basics"   "china_dragon"   "china_novice"   "china_ranges"  
    #>  [33] "china_sunset"   "china_theory"   "china_weirdo"   "citric"        
    #>  [37] "citric_yellow"  "citrus"         "corona"         "cyan_brick"    
    #>  [41] "cyan_green"     "cyan_pink"      "cyan_purple"    "cyan_tan"      
    #>  [45] "cyan_violet"    "Darjeeling"     "Darjeeling2"    "dark_blue"     
    #>  [49] "dark_citrus"    "dark_cyan"      "dark_violet"    "dusk_dawn"     
    #>  [53] "FantasticFox"   "flame_artic"    "flame_blind"    "flame_flame"   
    #>  [57] "flame_light"    "flame_macaw"    "flame_polar"    "flame_volts"   
    #>  [61] "flame_watts"    "flame_weird"    "flame_wings"    "forest"        
    #>  [65] "forest_citric"  "forest_yellow"  "GrandBudapest"  "GrandBudapest2"
    #>  [69] "horizon"        "horizon_extra"  "lawhoops"       "Moonrise1"     
    #>  [73] "Moonrise2"      "Moonrise3"      "ocean_aqua"     "ocean_brick"   
    #>  [77] "ocean_citrus"   "ocean_earth"    "ocean_green"    "ocean_pink"    
    #>  [81] "ocean_red"      "ocean_teal"     "purple_baby"    "purple_pink"   
    #>  [85] "Royal1"         "Royal2"         "Rushmore"       "samba_color"   
    #>  [89] "samba_light"    "samba_night"    "solar_basic"    "solar_blues"   
    #>  [93] "solar_extra"    "solar_flare"    "solar_glare"    "solar_rojos"   
    #>  [97] "teal_orange"    "teal_violet"    "white_grove"    "white_jungle"  
    #> [101] "white_mango"    "white_orange"   "white_tango"    "wolfgang_basic"
    #> [105] "wolfgang_extra" "Zissou"

## Color Maps

To keep consistent color designations, one can use the `color_map`
function to link features to their specific hex color annoations. For
example,

``` r
jdb_color_map(c("HSC"))
#> [1] "#00441B"
```

returns the hex code associated with `HSC` in the Buenrostro Lab
paradigm. This function may be applied over multiple features–

``` r
jdb_color_map(c("HSC", "CMP", "HSC"))
#> [1] "#00441B" "#FFC179" "#00441B"
```

and will error out when a feature is not recognized–

``` r
jdb_color_map(c("WHAT"))
#>  Error: all(name %in% names(jdb_color_maps)) is not TRUE 
```

### Here are all the names that are available…

    #>  [1] "B"     "CD4"   "CD8"   "CLP"   "CMP"   "Ery"   "GMP"   "GMP-A" "GMP-B"
    #> [10] "GMP-C" "HSC"   "LMPP"  "MEP"   "mono"  "MPP"   "NK"    "pDC"

### Here are what the mappings look like…

![](figure/colormaps-1.png)

## ggplot example

To coordinate a ggplot feature (e.g. data point in a scatter plot) with
a particular color, [this post](https://www.biostars.org/p/204891/) was
a life-saver. Specifically, we’ll use a named vector to coordinate the
discrete values. Here’s an example–

``` r
xy <- 1:7
cell <- c("GMP-A", "Ery", "CD4", "Ery", "LMPP", "ERY", "MEP")

df <- data.frame(
  xy = xy,
  cell = cell, stringsAsFactors = FALSE
)

ggplot(df, aes(x = xy, y = xy, color = cell)) +
  geom_point(size = 10) + pretty_plot() +
  scale_color_manual(values = jdb_color_maps)
```

![](figure/colormapPlotExample-1.png)

**P.S.**– this call will return a blank color for features that are not
found in the color map (“ERY” in this example).

### Important Note on color mappings…

The above `ggplot` command works because `jdb_color_maps` (with an ‘s’)
exists as a named vector in the `BuenColors` NAMESPACE. The provided
function (`jdb_color_map`) does not have an ‘s’ by the way. This same
syntax of supplying a named vector should work for all discrete color
scale functionalities in `ggplot`.

# Discrete colors

The trick here is to use `scale_color_manual` like it is shown here–

``` r
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point() + pretty_plot() + 
  scale_color_manual(values = jdb_palette("brewer_spectra"))
```

![](figure/discrete-1.png)

# Continuous fill

The trick here is to use `scale_color_gradientn` like it is shown here–

``` r
df <- data.frame(x = rnorm(1000), y = 0)
ggplot(df, aes(x=x, y=y, colour=x)) + geom_point() + 
  scale_color_gradientn(colors = jdb_palette("flame_light")) +
  pretty_plot()
```

![](figure/ggplotcont-1.png)

# Density Plot

Best way that I’ve found to make the density color function represented
in the points. Thanks to [Kamil
Slowikowski](http://slowkow.com/notes/ggplot2-color-by-density/) for
figuring this out.

``` r
dat <- data.frame(
  x = c(
    rnorm(1e4, mean = 0, sd = 0.1),
    rnorm(1e3, mean = 0, sd = 0.1)
  ),
  y = c(
    rnorm(1e4, mean = 0, sd = 0.1),
    rnorm(1e3, mean = 0.1, sd = 0.2)
  )
)
dat$density <- get_density(dat$x, dat$y)
ggplot2::ggplot(dat) + geom_point(aes(x, y, color = density)) + 
  scale_color_gradientn(colors = jdb_palette("solar_extra")) +
  pretty_plot()
```

![](figure/ggplotdensty-1.png)

# Shuffle Plot Order

Quick wrapper using `shuf` to change the order of plotting points (to a
random presentation) to avoid hiding effects.

``` r
tdf<-paste(system.file('rds',package='BuenColors'),'basicTSNE.rds',sep='/')
df <- readRDS(tdf)
ggplot(shuf(df)) + geom_point(aes(X1, X2, color = counts)) + 
  scale_color_gradientn(colors = jdb_palette("solar_extra")) +
  pretty_plot()
```

![](figure/tsne-1.png)

## Continuous Colors

Here’s what each palette looks like on a continuous scale.

![](figure/printCont-1.png)![](figure/printCont-2.png)![](figure/printCont-3.png)![](figure/printCont-4.png)![](figure/printCont-5.png)![](figure/printCont-6.png)![](figure/printCont-7.png)![](figure/printCont-8.png)![](figure/printCont-9.png)![](figure/printCont-10.png)![](figure/printCont-11.png)![](figure/printCont-12.png)![](figure/printCont-13.png)![](figure/printCont-14.png)![](figure/printCont-15.png)![](figure/printCont-16.png)![](figure/printCont-17.png)![](figure/printCont-18.png)![](figure/printCont-19.png)![](figure/printCont-20.png)![](figure/printCont-21.png)![](figure/printCont-22.png)![](figure/printCont-23.png)![](figure/printCont-24.png)![](figure/printCont-25.png)![](figure/printCont-26.png)![](figure/printCont-27.png)![](figure/printCont-28.png)![](figure/printCont-29.png)![](figure/printCont-30.png)![](figure/printCont-31.png)![](figure/printCont-32.png)![](figure/printCont-33.png)![](figure/printCont-34.png)![](figure/printCont-35.png)![](figure/printCont-36.png)![](figure/printCont-37.png)![](figure/printCont-38.png)![](figure/printCont-39.png)![](figure/printCont-40.png)![](figure/printCont-41.png)![](figure/printCont-42.png)![](figure/printCont-43.png)![](figure/printCont-44.png)![](figure/printCont-45.png)![](figure/printCont-46.png)![](figure/printCont-47.png)![](figure/printCont-48.png)![](figure/printCont-49.png)![](figure/printCont-50.png)![](figure/printCont-51.png)![](figure/printCont-52.png)![](figure/printCont-53.png)![](figure/printCont-54.png)![](figure/printCont-55.png)![](figure/printCont-56.png)![](figure/printCont-57.png)![](figure/printCont-58.png)![](figure/printCont-59.png)![](figure/printCont-60.png)![](figure/printCont-61.png)![](figure/printCont-62.png)![](figure/printCont-63.png)![](figure/printCont-64.png)![](figure/printCont-65.png)![](figure/printCont-66.png)![](figure/printCont-67.png)![](figure/printCont-68.png)![](figure/printCont-69.png)![](figure/printCont-70.png)![](figure/printCont-71.png)![](figure/printCont-72.png)![](figure/printCont-73.png)![](figure/printCont-74.png)![](figure/printCont-75.png)![](figure/printCont-76.png)![](figure/printCont-77.png)![](figure/printCont-78.png)![](figure/printCont-79.png)![](figure/printCont-80.png)![](figure/printCont-81.png)![](figure/printCont-82.png)![](figure/printCont-83.png)![](figure/printCont-84.png)![](figure/printCont-85.png)![](figure/printCont-86.png)![](figure/printCont-87.png)![](figure/printCont-88.png)![](figure/printCont-89.png)![](figure/printCont-90.png)![](figure/printCont-91.png)![](figure/printCont-92.png)![](figure/printCont-93.png)![](figure/printCont-94.png)![](figure/printCont-95.png)![](figure/printCont-96.png)![](figure/printCont-97.png)![](figure/printCont-98.png)![](figure/printCont-99.png)![](figure/printCont-100.png)![](figure/printCont-101.png)![](figure/printCont-102.png)![](figure/printCont-103.png)![](figure/printCont-104.png)![](figure/printCont-105.png)![](figure/printCont-106.png)

## Discrete colors

Here are the discrete color units that go into each scale. If n is small
and discrete, note that the colors that are selected are read from left
to right.

![](figure/printDiscrete-1.png)![](figure/printDiscrete-2.png)![](figure/printDiscrete-3.png)![](figure/printDiscrete-4.png)![](figure/printDiscrete-5.png)![](figure/printDiscrete-6.png)![](figure/printDiscrete-7.png)![](figure/printDiscrete-8.png)![](figure/printDiscrete-9.png)![](figure/printDiscrete-10.png)![](figure/printDiscrete-11.png)![](figure/printDiscrete-12.png)![](figure/printDiscrete-13.png)![](figure/printDiscrete-14.png)![](figure/printDiscrete-15.png)![](figure/printDiscrete-16.png)![](figure/printDiscrete-17.png)![](figure/printDiscrete-18.png)![](figure/printDiscrete-19.png)![](figure/printDiscrete-20.png)![](figure/printDiscrete-21.png)![](figure/printDiscrete-22.png)![](figure/printDiscrete-23.png)![](figure/printDiscrete-24.png)![](figure/printDiscrete-25.png)![](figure/printDiscrete-26.png)![](figure/printDiscrete-27.png)![](figure/printDiscrete-28.png)![](figure/printDiscrete-29.png)![](figure/printDiscrete-30.png)![](figure/printDiscrete-31.png)![](figure/printDiscrete-32.png)![](figure/printDiscrete-33.png)![](figure/printDiscrete-34.png)![](figure/printDiscrete-35.png)![](figure/printDiscrete-36.png)![](figure/printDiscrete-37.png)![](figure/printDiscrete-38.png)![](figure/printDiscrete-39.png)![](figure/printDiscrete-40.png)![](figure/printDiscrete-41.png)![](figure/printDiscrete-42.png)![](figure/printDiscrete-43.png)![](figure/printDiscrete-44.png)![](figure/printDiscrete-45.png)![](figure/printDiscrete-46.png)![](figure/printDiscrete-47.png)![](figure/printDiscrete-48.png)![](figure/printDiscrete-49.png)![](figure/printDiscrete-50.png)![](figure/printDiscrete-51.png)![](figure/printDiscrete-52.png)![](figure/printDiscrete-53.png)![](figure/printDiscrete-54.png)![](figure/printDiscrete-55.png)![](figure/printDiscrete-56.png)![](figure/printDiscrete-57.png)![](figure/printDiscrete-58.png)![](figure/printDiscrete-59.png)![](figure/printDiscrete-60.png)![](figure/printDiscrete-61.png)![](figure/printDiscrete-62.png)![](figure/printDiscrete-63.png)![](figure/printDiscrete-64.png)![](figure/printDiscrete-65.png)![](figure/printDiscrete-66.png)![](figure/printDiscrete-67.png)![](figure/printDiscrete-68.png)![](figure/printDiscrete-69.png)![](figure/printDiscrete-70.png)![](figure/printDiscrete-71.png)![](figure/printDiscrete-72.png)![](figure/printDiscrete-73.png)![](figure/printDiscrete-74.png)![](figure/printDiscrete-75.png)![](figure/printDiscrete-76.png)![](figure/printDiscrete-77.png)![](figure/printDiscrete-78.png)![](figure/printDiscrete-79.png)![](figure/printDiscrete-80.png)![](figure/printDiscrete-81.png)![](figure/printDiscrete-82.png)![](figure/printDiscrete-83.png)![](figure/printDiscrete-84.png)![](figure/printDiscrete-85.png)![](figure/printDiscrete-86.png)![](figure/printDiscrete-87.png)![](figure/printDiscrete-88.png)![](figure/printDiscrete-89.png)![](figure/printDiscrete-90.png)![](figure/printDiscrete-91.png)![](figure/printDiscrete-92.png)![](figure/printDiscrete-93.png)![](figure/printDiscrete-94.png)![](figure/printDiscrete-95.png)![](figure/printDiscrete-96.png)![](figure/printDiscrete-97.png)![](figure/printDiscrete-98.png)![](figure/printDiscrete-99.png)![](figure/printDiscrete-100.png)![](figure/printDiscrete-101.png)![](figure/printDiscrete-102.png)![](figure/printDiscrete-103.png)![](figure/printDiscrete-104.png)![](figure/printDiscrete-105.png)![](figure/printDiscrete-106.png)
