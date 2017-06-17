#' @include plotHelp.R
NULL

#' List of maps between annotations and specified colors.
#'
#' Use \code{\link{color_map}} to map cell/feature to color hex.
#'
#' @export
color_maps <- c(
  "HSC" = "#00441B",
  "MPP" = "#46A040",
  "LMPP" = "#00AF99",
  "CMP" = "#FFC179",
  "CLP" = "#98D9E9",
  "MEP" = "#F6313E",
  "GMP"= "#FFA300",
  "pDC" = "#C390D4",
  "mono" = "#FF5A00",
  "GMP-A" = "#AFAFAF",
  "GMP-B" = "#7D7D7D",
  "GMP-C" =  "#4B4B4B",
  "Ery" = "#8F1336",
  "CD4" = "#0081C9",
  "CD8" = "#001588",
  "NK" = "#490C65",
  "B" = "#BA7FD0"
)

#' A mapping function to specific colors.
#'
#' This function maps a common feature/cell
#' type (e.g. "HSC") and returns the canonical
#' hex code associtated with it.
#'
#' color_map (no 's') is the function; color_maps
#' is a named character vector.
#'
#' @param name a character (vector) corresponding to a
#' name with a mappable color
#' @return a character (vector) of hex codes
#' @keywords colors
#' @examples
#' # See possible values
#' names(color_maps)
#'
#' # Get hex codes
#' color_map("HSC")
#' color_map(c("HSC", "LMPP", "HSC"))
#'
#' @export
color_map <- function(name) {
  stopifnot(all(name %in% names(color_maps)))
return(unname(color_maps[name]))
}

