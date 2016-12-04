<!-- README.md is generated from README.Rmd. Please edit that file -->
BuenColors
==========

A package that facilitates nice colors created for the [Buenrostro Lab](https://buenrostrolab.com). The base of the package including some divergent color schemes were taken from the [wesanderson](https://github.com/karthik/wesanderson) package. This README provides a quick overview of how to use the color schemes with ggplot2 and which palettes are available.

Installation
------------

``` r
devtools::install_github("caleblareau/BuenColors")
```

Usage
-----

``` r
library(BuenColors)
```

With the library loaded, just type this to get either the `continuous` or `discrete` (by default) palette printed in your `plot` console.

``` r
jdb_palette("FantasticFox")
```

![](figure/example-1.png)

``` r
jdb_palette("aqua_brick", type = "continuous")
```

![](figure/example-2.png)

### Here are all the names that are available...

    #>   [1] "algae_earth"    "aqua_brick"     "aqua_tan"       "berry"         
    #>   [5] "blue_cyan"      "BottleRocket"   "BottleRocket2"  "brewer_blue"   
    #>   [9] "brewer_celsius" "brewer_fire"    "brewer_green"   "brewer_heat"   
    #>  [13] "brewer_jamaica" "brewer_marine"  "brewer_orange"  "brewer_purple" 
    #>  [17] "brewer_red"     "brewer_spectra" "brewer_violet"  "brewer_yes"    
    #>  [21] "calma_azules"   "calma_bosque"   "calma_manudo"   "calma_marino"  
    #>  [25] "calma_morado"   "calma_musgos"   "Cavalcanti"     "Chevalier"     
    #>  [29] "china_basics"   "china_dragon"   "china_novice"   "china_ranges"  
    #>  [33] "china_sunset"   "china_theory"   "china_weirdo"   "citric"        
    #>  [37] "citric_yellow"  "citrus"         "cyan_brick"     "cyan_green"    
    #>  [41] "cyan_pink"      "cyan_purple"    "cyan_tan"       "cyan_violet"   
    #>  [45] "Darjeeling"     "Darjeeling2"    "dark_blue"      "dark_citrus"   
    #>  [49] "dark_cyan"      "dark_violet"    "dusk_dawn"      "FantasticFox"  
    #>  [53] "flame_artic"    "flame_blind"    "flame_flame"    "flame_light"   
    #>  [57] "flame_macaw"    "flame_polar"    "flame_volts"    "flame_watts"   
    #>  [61] "flame_weird"    "flame_wings"    "forest"         "forest_citric" 
    #>  [65] "forest_yellow"  "GrandBudapest"  "GrandBudapest2" "horizon"       
    #>  [69] "horizon_extra"  "Moonrise1"      "Moonrise2"      "Moonrise3"     
    #>  [73] "ocean_aqua"     "ocean_brick"    "ocean_citrus"   "ocean_earth"   
    #>  [77] "ocean_green"    "ocean_pink"     "ocean_red"      "ocean_teal"    
    #>  [81] "purple_baby"    "purple_pink"    "Royal1"         "Royal2"        
    #>  [85] "Rushmore"       "samba_color"    "samba_light"    "samba_night"   
    #>  [89] "solar_basic"    "solar_blues"    "solar_extra"    "solar_flare"   
    #>  [93] "solar_glare"    "solar_rojos"    "teal_orange"    "teal_violet"   
    #>  [97] "white_grove"    "white_jungle"   "white_mango"    "white_orange"  
    #> [101] "white_tango"    "wolfgang_basic" "wolfgang_extra" "Zissou"

Discrete colors
===============

The trick here is to use `scale_color_manual` like it is shown here--

``` r
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point() + theme_bw() + 
  scale_color_manual(values = jdb_palette("brewer_spectra"))
```

![](figure/grandbudapest-1.png)

Continuous fill
===============

The trick here is to use `scale_color_gradientn` like it is shown here--

``` r
df <- data.frame(x = rnorm(1000), y = 0)
ggplot(df, aes(x=x, y=y, colour=x)) + theme_bw() + geom_point() + 
  scale_color_gradientn(colors = jdb_palette("flame_light"))
```

![](figure/ggplotcont-1.png)

Continuous Colors
-----------------

Here's what each palette looks like on a continuous scale.

![](figure/printCont-1.png)![](figure/printCont-2.png)![](figure/printCont-3.png)![](figure/printCont-4.png)![](figure/printCont-5.png)![](figure/printCont-6.png)![](figure/printCont-7.png)![](figure/printCont-8.png)![](figure/printCont-9.png)![](figure/printCont-10.png)![](figure/printCont-11.png)![](figure/printCont-12.png)![](figure/printCont-13.png)![](figure/printCont-14.png)![](figure/printCont-15.png)![](figure/printCont-16.png)![](figure/printCont-17.png)![](figure/printCont-18.png)![](figure/printCont-19.png)![](figure/printCont-20.png)![](figure/printCont-21.png)![](figure/printCont-22.png)![](figure/printCont-23.png)![](figure/printCont-24.png)![](figure/printCont-25.png)![](figure/printCont-26.png)![](figure/printCont-27.png)![](figure/printCont-28.png)![](figure/printCont-29.png)![](figure/printCont-30.png)![](figure/printCont-31.png)![](figure/printCont-32.png)![](figure/printCont-33.png)![](figure/printCont-34.png)![](figure/printCont-35.png)![](figure/printCont-36.png)![](figure/printCont-37.png)![](figure/printCont-38.png)![](figure/printCont-39.png)![](figure/printCont-40.png)![](figure/printCont-41.png)![](figure/printCont-42.png)![](figure/printCont-43.png)![](figure/printCont-44.png)![](figure/printCont-45.png)![](figure/printCont-46.png)![](figure/printCont-47.png)![](figure/printCont-48.png)![](figure/printCont-49.png)![](figure/printCont-50.png)![](figure/printCont-51.png)![](figure/printCont-52.png)![](figure/printCont-53.png)![](figure/printCont-54.png)![](figure/printCont-55.png)![](figure/printCont-56.png)![](figure/printCont-57.png)![](figure/printCont-58.png)![](figure/printCont-59.png)![](figure/printCont-60.png)![](figure/printCont-61.png)![](figure/printCont-62.png)![](figure/printCont-63.png)![](figure/printCont-64.png)![](figure/printCont-65.png)![](figure/printCont-66.png)![](figure/printCont-67.png)![](figure/printCont-68.png)![](figure/printCont-69.png)![](figure/printCont-70.png)![](figure/printCont-71.png)![](figure/printCont-72.png)![](figure/printCont-73.png)![](figure/printCont-74.png)![](figure/printCont-75.png)![](figure/printCont-76.png)![](figure/printCont-77.png)![](figure/printCont-78.png)![](figure/printCont-79.png)![](figure/printCont-80.png)![](figure/printCont-81.png)![](figure/printCont-82.png)![](figure/printCont-83.png)![](figure/printCont-84.png)![](figure/printCont-85.png)![](figure/printCont-86.png)![](figure/printCont-87.png)![](figure/printCont-88.png)![](figure/printCont-89.png)![](figure/printCont-90.png)![](figure/printCont-91.png)![](figure/printCont-92.png)![](figure/printCont-93.png)![](figure/printCont-94.png)![](figure/printCont-95.png)![](figure/printCont-96.png)![](figure/printCont-97.png)![](figure/printCont-98.png)![](figure/printCont-99.png)![](figure/printCont-100.png)![](figure/printCont-101.png)![](figure/printCont-102.png)![](figure/printCont-103.png)![](figure/printCont-104.png)

Discrete colors
---------------

Here are the discrete color units that go into each scale. If n is small and discrete, note that the colors that are selected are read from left to right.

![](figure/printDiscrete-1.png)![](figure/printDiscrete-2.png)![](figure/printDiscrete-3.png)![](figure/printDiscrete-4.png)![](figure/printDiscrete-5.png)![](figure/printDiscrete-6.png)![](figure/printDiscrete-7.png)![](figure/printDiscrete-8.png)![](figure/printDiscrete-9.png)![](figure/printDiscrete-10.png)![](figure/printDiscrete-11.png)![](figure/printDiscrete-12.png)![](figure/printDiscrete-13.png)![](figure/printDiscrete-14.png)![](figure/printDiscrete-15.png)![](figure/printDiscrete-16.png)![](figure/printDiscrete-17.png)![](figure/printDiscrete-18.png)![](figure/printDiscrete-19.png)![](figure/printDiscrete-20.png)![](figure/printDiscrete-21.png)![](figure/printDiscrete-22.png)![](figure/printDiscrete-23.png)![](figure/printDiscrete-24.png)![](figure/printDiscrete-25.png)![](figure/printDiscrete-26.png)![](figure/printDiscrete-27.png)![](figure/printDiscrete-28.png)![](figure/printDiscrete-29.png)![](figure/printDiscrete-30.png)![](figure/printDiscrete-31.png)![](figure/printDiscrete-32.png)![](figure/printDiscrete-33.png)![](figure/printDiscrete-34.png)![](figure/printDiscrete-35.png)![](figure/printDiscrete-36.png)![](figure/printDiscrete-37.png)![](figure/printDiscrete-38.png)![](figure/printDiscrete-39.png)![](figure/printDiscrete-40.png)![](figure/printDiscrete-41.png)![](figure/printDiscrete-42.png)![](figure/printDiscrete-43.png)![](figure/printDiscrete-44.png)![](figure/printDiscrete-45.png)![](figure/printDiscrete-46.png)![](figure/printDiscrete-47.png)![](figure/printDiscrete-48.png)![](figure/printDiscrete-49.png)![](figure/printDiscrete-50.png)![](figure/printDiscrete-51.png)![](figure/printDiscrete-52.png)![](figure/printDiscrete-53.png)![](figure/printDiscrete-54.png)![](figure/printDiscrete-55.png)![](figure/printDiscrete-56.png)![](figure/printDiscrete-57.png)![](figure/printDiscrete-58.png)![](figure/printDiscrete-59.png)![](figure/printDiscrete-60.png)![](figure/printDiscrete-61.png)![](figure/printDiscrete-62.png)![](figure/printDiscrete-63.png)![](figure/printDiscrete-64.png)![](figure/printDiscrete-65.png)![](figure/printDiscrete-66.png)![](figure/printDiscrete-67.png)![](figure/printDiscrete-68.png)![](figure/printDiscrete-69.png)![](figure/printDiscrete-70.png)![](figure/printDiscrete-71.png)![](figure/printDiscrete-72.png)![](figure/printDiscrete-73.png)![](figure/printDiscrete-74.png)![](figure/printDiscrete-75.png)![](figure/printDiscrete-76.png)![](figure/printDiscrete-77.png)![](figure/printDiscrete-78.png)![](figure/printDiscrete-79.png)![](figure/printDiscrete-80.png)![](figure/printDiscrete-81.png)![](figure/printDiscrete-82.png)![](figure/printDiscrete-83.png)![](figure/printDiscrete-84.png)![](figure/printDiscrete-85.png)![](figure/printDiscrete-86.png)![](figure/printDiscrete-87.png)![](figure/printDiscrete-88.png)![](figure/printDiscrete-89.png)![](figure/printDiscrete-90.png)![](figure/printDiscrete-91.png)![](figure/printDiscrete-92.png)![](figure/printDiscrete-93.png)![](figure/printDiscrete-94.png)![](figure/printDiscrete-95.png)![](figure/printDiscrete-96.png)![](figure/printDiscrete-97.png)![](figure/printDiscrete-98.png)![](figure/printDiscrete-99.png)![](figure/printDiscrete-100.png)![](figure/printDiscrete-101.png)![](figure/printDiscrete-102.png)![](figure/printDiscrete-103.png)![](figure/printDiscrete-104.png)
