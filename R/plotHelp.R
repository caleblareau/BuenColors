#' @include colors.R
NULL

#' Compute the density of points in a grid
#'
#' Credit to Kamil Slowikowski
#' See post: http://slowkow.com/notes/ggplot2-color-by-density/
#'
#' @param x X coordinates
#' @param y Y coordinates
#' @param n Number of bins to divide grid
#' @return A vector of densities for plotting
#' @importFrom MASS kde2d
#' @keywords point density
#' @examples
#' dat <- data.frame(
#'   x = c(
#'     rnorm(1e4, mean = 0, sd = 0.1),
#'     rnorm(1e3, mean = 0, sd = 0.1)
#'   ),
#'   y = c(
#'     rnorm(1e4, mean = 0, sd = 0.1),
#'     rnorm(1e3, mean = 0.1, sd = 0.2)
#'   )
#' )
#' dat$density <- get_density(dat$x, dat$y)
#' ggplot2::ggplot(dat) + geom_point(aes(x, y, color = density))
#' @export
get_density <- function(x, y, n = 200) {
  dens <- MASS::kde2d(x = x, y = y, n = n)
  ix <- findInterval(x, dens$x)
  iy <- findInterval(y, dens$y)
  ii <- cbind(ix, iy)
  return(dens$z[ii])
}

#' Get rid of gridlines, etc.
#'
#' Idea is to make it look more like Matlab
#'
#' @return A vector of densities for plotting
#' @importFrom ggplot2 theme theme_bw element_blank
#' @keywords point density
#' @examples
#' df <- data.frame(x = rnorm(1000), y = 0)
#' ggplot(df, aes(x=x, y=y, colour=x)) + geom_point()
#'
#' @export
pretty_plot <- function(){
nl <- theme_bw(base_size = 16) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text = element_text(colour = "black", family="Helvetica"))
return(nl)
}

#' Randomly shuffle the plotting order
#'
#' Idea is to make it look more like
#'
#' @return An object with the rows shuffled
#' @keywords point density
#' @examples
#' df <- data.frame(x = rnorm(1000), y = 0)
#' ggplot(shuf(df), aes(x=x, y=y, colour=x)) + geom_point()
#'
#' @export
shuf <- function(df){
  return(df[sample(1:dim(df)[1], dim(df)[1]),])
}
