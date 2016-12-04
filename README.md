<!-- README.md is generated from README.Rmd. Please edit that file -->
BuenColors
==========

A package that facilitates nice colors created for the Buenrostro Lab. The base of the package including some divergent color schemes were taken from the [wesanderson](https://github.com/karthik/wesanderson) package. This README provides a quick overview of how to use the color schemes with ggplot2 and which palettes are available.

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

Here are all the names that are available
-----------------------------------------

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

``` r
jdb_palette("algae_earth", type = "continuous")
```

![](figure/printCont-1.png)

``` r
jdb_palette("aqua_brick", type = "continuous")
```

![](figure/printCont-2.png)

``` r
jdb_palette("aqua_tan", type = "continuous")
```

![](figure/printCont-3.png)

``` r
jdb_palette("berry", type = "continuous")
```

![](figure/printCont-4.png)

``` r
jdb_palette("blue_cyan", type = "continuous")
```

![](figure/printCont-5.png)

``` r
jdb_palette("BottleRocket", type = "continuous")
```

![](figure/printCont-6.png)

``` r
jdb_palette("BottleRocket2", type = "continuous")
```

![](figure/printCont-7.png)

``` r
jdb_palette("brewer_blue", type = "continuous")
```

![](figure/printCont-8.png)

``` r
jdb_palette("brewer_celsius", type = "continuous")
```

![](figure/printCont-9.png)

``` r
jdb_palette("brewer_fire", type = "continuous")
```

![](figure/printCont-10.png)

``` r
jdb_palette("brewer_green", type = "continuous")
```

![](figure/printCont-11.png)

``` r
jdb_palette("brewer_heat", type = "continuous")
```

![](figure/printCont-12.png)

``` r
jdb_palette("brewer_jamaica", type = "continuous")
```

![](figure/printCont-13.png)

``` r
jdb_palette("brewer_marine", type = "continuous")
```

![](figure/printCont-14.png)

``` r
jdb_palette("brewer_orange", type = "continuous")
```

![](figure/printCont-15.png)

``` r
jdb_palette("brewer_purple", type = "continuous")
```

![](figure/printCont-16.png)

``` r
jdb_palette("brewer_red", type = "continuous")
```

![](figure/printCont-17.png)

``` r
jdb_palette("brewer_spectra", type = "continuous")
```

![](figure/printCont-18.png)

``` r
jdb_palette("brewer_violet", type = "continuous")
```

![](figure/printCont-19.png)

``` r
jdb_palette("brewer_yes", type = "continuous")
```

![](figure/printCont-20.png)

``` r
jdb_palette("calma_azules", type = "continuous")
```

![](figure/printCont-21.png)

``` r
jdb_palette("calma_bosque", type = "continuous")
```

![](figure/printCont-22.png)

``` r
jdb_palette("calma_manudo", type = "continuous")
```

![](figure/printCont-23.png)

``` r
jdb_palette("calma_marino", type = "continuous")
```

![](figure/printCont-24.png)

``` r
jdb_palette("calma_morado", type = "continuous")
```

![](figure/printCont-25.png)

``` r
jdb_palette("calma_musgos", type = "continuous")
```

![](figure/printCont-26.png)

``` r
jdb_palette("Cavalcanti", type = "continuous")
```

![](figure/printCont-27.png)

``` r
jdb_palette("Chevalier", type = "continuous")
```

![](figure/printCont-28.png)

``` r
jdb_palette("china_basics", type = "continuous")
```

![](figure/printCont-29.png)

``` r
jdb_palette("china_dragon", type = "continuous")
```

![](figure/printCont-30.png)

``` r
jdb_palette("china_novice", type = "continuous")
```

![](figure/printCont-31.png)

``` r
jdb_palette("china_ranges", type = "continuous")
```

![](figure/printCont-32.png)

``` r
jdb_palette("china_sunset", type = "continuous")
```

![](figure/printCont-33.png)

``` r
jdb_palette("china_theory", type = "continuous")
```

![](figure/printCont-34.png)

``` r
jdb_palette("china_weirdo", type = "continuous")
```

![](figure/printCont-35.png)

``` r
jdb_palette("citric", type = "continuous")
```

![](figure/printCont-36.png)

``` r
jdb_palette("citric_yellow", type = "continuous")
```

![](figure/printCont-37.png)

``` r
jdb_palette("citrus", type = "continuous")
```

![](figure/printCont-38.png)

``` r
jdb_palette("cyan_brick", type = "continuous")
```

![](figure/printCont-39.png)

``` r
jdb_palette("cyan_green", type = "continuous")
```

![](figure/printCont-40.png)

``` r
jdb_palette("cyan_pink", type = "continuous")
```

![](figure/printCont-41.png)

``` r
jdb_palette("cyan_purple", type = "continuous")
```

![](figure/printCont-42.png)

``` r
jdb_palette("cyan_tan", type = "continuous")
```

![](figure/printCont-43.png)

``` r
jdb_palette("cyan_violet", type = "continuous")
```

![](figure/printCont-44.png)

``` r
jdb_palette("Darjeeling", type = "continuous")
```

![](figure/printCont-45.png)

``` r
jdb_palette("Darjeeling2", type = "continuous")
```

![](figure/printCont-46.png)

``` r
jdb_palette("dark_blue", type = "continuous")
```

![](figure/printCont-47.png)

``` r
jdb_palette("dark_citrus", type = "continuous")
```

![](figure/printCont-48.png)

``` r
jdb_palette("dark_cyan", type = "continuous")
```

![](figure/printCont-49.png)

``` r
jdb_palette("dark_violet", type = "continuous")
```

![](figure/printCont-50.png)

``` r
jdb_palette("dusk_dawn", type = "continuous")
```

![](figure/printCont-51.png)

``` r
jdb_palette("FantasticFox", type = "continuous")
```

![](figure/printCont-52.png)

``` r
jdb_palette("flame_artic", type = "continuous")
```

![](figure/printCont-53.png)

``` r
jdb_palette("flame_blind", type = "continuous")
```

![](figure/printCont-54.png)

``` r
jdb_palette("flame_flame", type = "continuous")
```

![](figure/printCont-55.png)

``` r
jdb_palette("flame_light", type = "continuous")
```

![](figure/printCont-56.png)

``` r
jdb_palette("flame_macaw", type = "continuous")
```

![](figure/printCont-57.png)

``` r
jdb_palette("flame_polar", type = "continuous")
```

![](figure/printCont-58.png)

``` r
jdb_palette("flame_volts", type = "continuous")
```

![](figure/printCont-59.png)

``` r
jdb_palette("flame_watts", type = "continuous")
```

![](figure/printCont-60.png)

``` r
jdb_palette("flame_weird", type = "continuous")
```

![](figure/printCont-61.png)

``` r
jdb_palette("flame_wings", type = "continuous")
```

![](figure/printCont-62.png)

``` r
jdb_palette("forest", type = "continuous")
```

![](figure/printCont-63.png)

``` r
jdb_palette("forest_citric", type = "continuous")
```

![](figure/printCont-64.png)

``` r
jdb_palette("forest_yellow", type = "continuous")
```

![](figure/printCont-65.png)

``` r
jdb_palette("GrandBudapest", type = "continuous")
```

![](figure/printCont-66.png)

``` r
jdb_palette("GrandBudapest2", type = "continuous")
```

![](figure/printCont-67.png)

``` r
jdb_palette("horizon", type = "continuous")
```

![](figure/printCont-68.png)

``` r
jdb_palette("horizon_extra", type = "continuous")
```

![](figure/printCont-69.png)

``` r
jdb_palette("Moonrise1", type = "continuous")
```

![](figure/printCont-70.png)

``` r
jdb_palette("Moonrise2", type = "continuous")
```

![](figure/printCont-71.png)

``` r
jdb_palette("Moonrise3", type = "continuous")
```

![](figure/printCont-72.png)

``` r
jdb_palette("ocean_aqua", type = "continuous")
```

![](figure/printCont-73.png)

``` r
jdb_palette("ocean_brick", type = "continuous")
```

![](figure/printCont-74.png)

``` r
jdb_palette("ocean_citrus", type = "continuous")
```

![](figure/printCont-75.png)

``` r
jdb_palette("ocean_earth", type = "continuous")
```

![](figure/printCont-76.png)

``` r
jdb_palette("ocean_green", type = "continuous")
```

![](figure/printCont-77.png)

``` r
jdb_palette("ocean_pink", type = "continuous")
```

![](figure/printCont-78.png)

``` r
jdb_palette("ocean_red", type = "continuous")
```

![](figure/printCont-79.png)

``` r
jdb_palette("ocean_teal", type = "continuous")
```

![](figure/printCont-80.png)

``` r
jdb_palette("purple_baby", type = "continuous")
```

![](figure/printCont-81.png)

``` r
jdb_palette("purple_pink", type = "continuous")
```

![](figure/printCont-82.png)

``` r
jdb_palette("Royal1", type = "continuous")
```

![](figure/printCont-83.png)

``` r
jdb_palette("Royal2", type = "continuous")
```

![](figure/printCont-84.png)

``` r
jdb_palette("Rushmore", type = "continuous")
```

![](figure/printCont-85.png)

``` r
jdb_palette("samba_color", type = "continuous")
```

![](figure/printCont-86.png)

``` r
jdb_palette("samba_light", type = "continuous")
```

![](figure/printCont-87.png)

``` r
jdb_palette("samba_night", type = "continuous")
```

![](figure/printCont-88.png)

``` r
jdb_palette("solar_basic", type = "continuous")
```

![](figure/printCont-89.png)

``` r
jdb_palette("solar_blues", type = "continuous")
```

![](figure/printCont-90.png)

``` r
jdb_palette("solar_extra", type = "continuous")
```

![](figure/printCont-91.png)

``` r
jdb_palette("solar_flare", type = "continuous")
```

![](figure/printCont-92.png)

``` r
jdb_palette("solar_glare", type = "continuous")
```

![](figure/printCont-93.png)

``` r
jdb_palette("solar_rojos", type = "continuous")
```

![](figure/printCont-94.png)

``` r
jdb_palette("teal_orange", type = "continuous")
```

![](figure/printCont-95.png)

``` r
jdb_palette("teal_violet", type = "continuous")
```

![](figure/printCont-96.png)

``` r
jdb_palette("white_grove", type = "continuous")
```

![](figure/printCont-97.png)

``` r
jdb_palette("white_jungle", type = "continuous")
```

![](figure/printCont-98.png)

``` r
jdb_palette("white_mango", type = "continuous")
```

![](figure/printCont-99.png)

``` r
jdb_palette("white_orange", type = "continuous")
```

![](figure/printCont-100.png)

``` r
jdb_palette("white_tango", type = "continuous")
```

![](figure/printCont-101.png)

``` r
jdb_palette("wolfgang_basic", type = "continuous")
```

![](figure/printCont-102.png)

``` r
jdb_palette("wolfgang_extra", type = "continuous")
```

![](figure/printCont-103.png)

``` r
jdb_palette("Zissou", type = "continuous")
```

![](figure/printCont-104.png)

Discrete colors
---------------

Here are the discrete color units that go into each scale. If n is small and discrete, note that the colors that are selected are read from left to right.

``` r
jdb_palette("algae_earth")
```

![](figure/printDiscrete-1.png)

``` r
jdb_palette("aqua_brick")
```

![](figure/printDiscrete-2.png)

``` r
jdb_palette("aqua_tan")
```

![](figure/printDiscrete-3.png)

``` r
jdb_palette("berry")
```

![](figure/printDiscrete-4.png)

``` r
jdb_palette("blue_cyan")
```

![](figure/printDiscrete-5.png)

``` r
jdb_palette("BottleRocket")
```

![](figure/printDiscrete-6.png)

``` r
jdb_palette("BottleRocket2")
```

![](figure/printDiscrete-7.png)

``` r
jdb_palette("brewer_blue")
```

![](figure/printDiscrete-8.png)

``` r
jdb_palette("brewer_celsius")
```

![](figure/printDiscrete-9.png)

``` r
jdb_palette("brewer_fire")
```

![](figure/printDiscrete-10.png)

``` r
jdb_palette("brewer_green")
```

![](figure/printDiscrete-11.png)

``` r
jdb_palette("brewer_heat")
```

![](figure/printDiscrete-12.png)

``` r
jdb_palette("brewer_jamaica")
```

![](figure/printDiscrete-13.png)

``` r
jdb_palette("brewer_marine")
```

![](figure/printDiscrete-14.png)

``` r
jdb_palette("brewer_orange")
```

![](figure/printDiscrete-15.png)

``` r
jdb_palette("brewer_purple")
```

![](figure/printDiscrete-16.png)

``` r
jdb_palette("brewer_red")
```

![](figure/printDiscrete-17.png)

``` r
jdb_palette("brewer_spectra")
```

![](figure/printDiscrete-18.png)

``` r
jdb_palette("brewer_violet")
```

![](figure/printDiscrete-19.png)

``` r
jdb_palette("brewer_yes")
```

![](figure/printDiscrete-20.png)

``` r
jdb_palette("calma_azules")
```

![](figure/printDiscrete-21.png)

``` r
jdb_palette("calma_bosque")
```

![](figure/printDiscrete-22.png)

``` r
jdb_palette("calma_manudo")
```

![](figure/printDiscrete-23.png)

``` r
jdb_palette("calma_marino")
```

![](figure/printDiscrete-24.png)

``` r
jdb_palette("calma_morado")
```

![](figure/printDiscrete-25.png)

``` r
jdb_palette("calma_musgos")
```

![](figure/printDiscrete-26.png)

``` r
jdb_palette("Cavalcanti")
```

![](figure/printDiscrete-27.png)

``` r
jdb_palette("Chevalier")
```

![](figure/printDiscrete-28.png)

``` r
jdb_palette("china_basics")
```

![](figure/printDiscrete-29.png)

``` r
jdb_palette("china_dragon")
```

![](figure/printDiscrete-30.png)

``` r
jdb_palette("china_novice")
```

![](figure/printDiscrete-31.png)

``` r
jdb_palette("china_ranges")
```

![](figure/printDiscrete-32.png)

``` r
jdb_palette("china_sunset")
```

![](figure/printDiscrete-33.png)

``` r
jdb_palette("china_theory")
```

![](figure/printDiscrete-34.png)

``` r
jdb_palette("china_weirdo")
```

![](figure/printDiscrete-35.png)

``` r
jdb_palette("citric")
```

![](figure/printDiscrete-36.png)

``` r
jdb_palette("citric_yellow")
```

![](figure/printDiscrete-37.png)

``` r
jdb_palette("citrus")
```

![](figure/printDiscrete-38.png)

``` r
jdb_palette("cyan_brick")
```

![](figure/printDiscrete-39.png)

``` r
jdb_palette("cyan_green")
```

![](figure/printDiscrete-40.png)

``` r
jdb_palette("cyan_pink")
```

![](figure/printDiscrete-41.png)

``` r
jdb_palette("cyan_purple")
```

![](figure/printDiscrete-42.png)

``` r
jdb_palette("cyan_tan")
```

![](figure/printDiscrete-43.png)

``` r
jdb_palette("cyan_violet")
```

![](figure/printDiscrete-44.png)

``` r
jdb_palette("Darjeeling")
```

![](figure/printDiscrete-45.png)

``` r
jdb_palette("Darjeeling2")
```

![](figure/printDiscrete-46.png)

``` r
jdb_palette("dark_blue")
```

![](figure/printDiscrete-47.png)

``` r
jdb_palette("dark_citrus")
```

![](figure/printDiscrete-48.png)

``` r
jdb_palette("dark_cyan")
```

![](figure/printDiscrete-49.png)

``` r
jdb_palette("dark_violet")
```

![](figure/printDiscrete-50.png)

``` r
jdb_palette("dusk_dawn")
```

![](figure/printDiscrete-51.png)

``` r
jdb_palette("FantasticFox")
```

![](figure/printDiscrete-52.png)

``` r
jdb_palette("flame_artic")
```

![](figure/printDiscrete-53.png)

``` r
jdb_palette("flame_blind")
```

![](figure/printDiscrete-54.png)

``` r
jdb_palette("flame_flame")
```

![](figure/printDiscrete-55.png)

``` r
jdb_palette("flame_light")
```

![](figure/printDiscrete-56.png)

``` r
jdb_palette("flame_macaw")
```

![](figure/printDiscrete-57.png)

``` r
jdb_palette("flame_polar")
```

![](figure/printDiscrete-58.png)

``` r
jdb_palette("flame_volts")
```

![](figure/printDiscrete-59.png)

``` r
jdb_palette("flame_watts")
```

![](figure/printDiscrete-60.png)

``` r
jdb_palette("flame_weird")
```

![](figure/printDiscrete-61.png)

``` r
jdb_palette("flame_wings")
```

![](figure/printDiscrete-62.png)

``` r
jdb_palette("forest")
```

![](figure/printDiscrete-63.png)

``` r
jdb_palette("forest_citric")
```

![](figure/printDiscrete-64.png)

``` r
jdb_palette("forest_yellow")
```

![](figure/printDiscrete-65.png)

``` r
jdb_palette("GrandBudapest")
```

![](figure/printDiscrete-66.png)

``` r
jdb_palette("GrandBudapest2")
```

![](figure/printDiscrete-67.png)

``` r
jdb_palette("horizon")
```

![](figure/printDiscrete-68.png)

``` r
jdb_palette("horizon_extra")
```

![](figure/printDiscrete-69.png)

``` r
jdb_palette("Moonrise1")
```

![](figure/printDiscrete-70.png)

``` r
jdb_palette("Moonrise2")
```

![](figure/printDiscrete-71.png)

``` r
jdb_palette("Moonrise3")
```

![](figure/printDiscrete-72.png)

``` r
jdb_palette("ocean_aqua")
```

![](figure/printDiscrete-73.png)

``` r
jdb_palette("ocean_brick")
```

![](figure/printDiscrete-74.png)

``` r
jdb_palette("ocean_citrus")
```

![](figure/printDiscrete-75.png)

``` r
jdb_palette("ocean_earth")
```

![](figure/printDiscrete-76.png)

``` r
jdb_palette("ocean_green")
```

![](figure/printDiscrete-77.png)

``` r
jdb_palette("ocean_pink")
```

![](figure/printDiscrete-78.png)

``` r
jdb_palette("ocean_red")
```

![](figure/printDiscrete-79.png)

``` r
jdb_palette("ocean_teal")
```

![](figure/printDiscrete-80.png)

``` r
jdb_palette("purple_baby")
```

![](figure/printDiscrete-81.png)

``` r
jdb_palette("purple_pink")
```

![](figure/printDiscrete-82.png)

``` r
jdb_palette("Royal1")
```

![](figure/printDiscrete-83.png)

``` r
jdb_palette("Royal2")
```

![](figure/printDiscrete-84.png)

``` r
jdb_palette("Rushmore")
```

![](figure/printDiscrete-85.png)

``` r
jdb_palette("samba_color")
```

![](figure/printDiscrete-86.png)

``` r
jdb_palette("samba_light")
```

![](figure/printDiscrete-87.png)

``` r
jdb_palette("samba_night")
```

![](figure/printDiscrete-88.png)

``` r
jdb_palette("solar_basic")
```

![](figure/printDiscrete-89.png)

``` r
jdb_palette("solar_blues")
```

![](figure/printDiscrete-90.png)

``` r
jdb_palette("solar_extra")
```

![](figure/printDiscrete-91.png)

``` r
jdb_palette("solar_flare")
```

![](figure/printDiscrete-92.png)

``` r
jdb_palette("solar_glare")
```

![](figure/printDiscrete-93.png)

``` r
jdb_palette("solar_rojos")
```

![](figure/printDiscrete-94.png)

``` r
jdb_palette("teal_orange")
```

![](figure/printDiscrete-95.png)

``` r
jdb_palette("teal_violet")
```

![](figure/printDiscrete-96.png)

``` r
jdb_palette("white_grove")
```

![](figure/printDiscrete-97.png)

``` r
jdb_palette("white_jungle")
```

![](figure/printDiscrete-98.png)

``` r
jdb_palette("white_mango")
```

![](figure/printDiscrete-99.png)

``` r
jdb_palette("white_orange")
```

![](figure/printDiscrete-100.png)

``` r
jdb_palette("white_tango")
```

![](figure/printDiscrete-101.png)

``` r
jdb_palette("wolfgang_basic")
```

![](figure/printDiscrete-102.png)

``` r
jdb_palette("wolfgang_extra")
```

![](figure/printDiscrete-103.png)

``` r
jdb_palette("Zissou")
```

![](figure/printDiscrete-104.png)
