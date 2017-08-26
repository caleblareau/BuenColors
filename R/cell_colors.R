#' @include plotHelp.R
NULL

#' List of maps between annotations and specified colors.
#'
#' Use \code{\link{jdb_color_map}} to map cell/feature to color hex.
#'
#' @export
jdb_color_maps <- c(
  "HSC" = "#00441B",
  "MPP" = "#46A040",
  "LMPP" = "#00AF99",
  "CMP" = "#FFC179",
  "CLP" = "#98D9E9",
  "MEP" = "#F6313E",
  "GMP"= "#FFA300",
  "pDC" = "#C390D4",
  "Mono" = "#FF5A00",
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
#' names(jdb_color_maps)
#'
#' # Get hex codes
#' jdb_color_map("HSC")
#' jdb_color_map(c("HSC", "LMPP", "HSC"))
#'
#' @export
jdb_color_map <- function(name) {
  stopifnot(all(name %in% names(jdb_color_maps)))
return(unname(jdb_color_maps[name]))
}


#' List of maps between annotations and specified colors for scHeme/UKBB
#' project
#'
#' Use ejc_color_map to map cell/feature to color hex.
#'
#' @export
ejc_color_maps <- c(
  "HSC" = "#00441B",
  "MPP" = "#46A040",
  "LMPP" = "#00AF99",
  "CMP" = "#FFC179",
  "CLP" = "#98D9E9",
  "MEP" = "#F6313E",
  "pDC" = "#CDA2DB",
  "mono" = "#FF5A00",
  "GMP-A" = "#FFCE00",
  "GMP-B" = "#FFA300",
  "GMP-C" =  "#FF7900",
  "Ery" = "#8F1336",
  "CD4" = "#0081C9",
  "CD8" = "#001588",
  "NK" = "#490C65",
  "B" = "#A65AC2",
  "Mega" = "#FF81AF",
  "mDC"= "#FFEC00"
)

#' A mapping function to specific colors for UKBB
#' single-cell heme paper.
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
#' names(ejc_color_maps)
#'
#' # Get hex codes
#' ejc_color_map("HSC")
#' ejc_color_map(c("HSC", "LMPP", "HSC"))
#'
#' @export
ejc_color_map <- function(name) {
  stopifnot(all(name %in% names(ejc_color_maps)))
return(unname(ejc_color_maps[name]))
}

