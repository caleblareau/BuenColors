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
#' @param fontsize You know, the font size lol; default = 12
#' @return A vector of densities for plotting
#' @importFrom ggplot2 theme theme_bw element_blank element_text element_rect
#' @keywords point density
#' @examples
#' df <- data.frame(x = rnorm(1000), y = 0)
#' ggplot(df, aes(x=x, y=y, colour=x)) + geom_point()
#'
#' @export
pretty_plot <- function(fontsize = 12){
nl <- theme_bw(base_size = fontsize) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text = element_text(colour = "black", family="Helvetica"),
    legend.key = element_blank(),
    strip.background = element_rect(colour="black", fill = "white")
  )
return(nl)
}

#' Randomly shuffle the plotting order
#'
#' Idea is to make the plot independent of the sample ordering
#'
#' @param df data.frame (or similar 2D feature) whose rows will be shuffled
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

#' Maps numeric vector to color palette
#'
#' Modified from Sushi::maptocolors
#'
#' @param numberVec Numeric vector
#'
#' @param palette color palette to which to be mapped. Any
#' valid palette in "BuenColors" should work.
#'
#' @param range The c(min, max) numeric values to
#' make the color at the extremes.
#'
#' @importFrom grDevices colorRampPalette
#'
#' @examples
#' i <- rnorm(1000)
#' df <- data.frame(x = i, y = 0, color = numberToColorVec(i^2, "brewer_heat"))
#' ggplot(shuf(df), aes(x=x, y=y, colour= color)) + geom_point() +
#'  scale_color_manual(values = levels(df$color))
#'
#' @export
#'
numberToColorVec <- function(numberVec, palette, range = NULL){

  stopifnot(is.numeric(numberVec))

  # Parse numeric vector and setup breaks being sensitive to
  # user-defined caps in range
  vec <- numberVec
  num <- 100

  if (is.null(range)) {
    breaks <- seq(min(vec, na.rm = TRUE), max(vec, na.rm = TRUE), length.out = num)
  } else {
    vec[which(vec < range[1])] <- range[1]
    vec[which(vec > range[2])] <- range[2]
    breaks <- seq(range[1], range[2], length.out = num)
  }

  # Setup color vector
  col <- grDevices::colorRampPalette(jdb_palette(palette, length(jdb_palettes[[palette]]), "continuous"))
  cols <- col(length(breaks) + 1)
  colvec <- as.character(cut(vec, c(-Inf, breaks, Inf), labels=cols))
  return(colvec)
}
