
#' Colour scale constructor for lifebrain colors
#'
#' @param palette Character name of palette in lifebrain_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
scale_colour_lifebrain <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- lifebrain_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("color", paste0("lifebrain_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_colour_gradientn(colours = pal(256), ...)
  }
}

#' Color scale constructor for lifebrain colors
#' @param ... arguments to \code{\link{scale_colour_lifebrain}}
#' @export
scale_color_lifebrain <- function(...) {
  scale_colour_lifebrain(...)
}

#' Fill scale constructor for lifebrain colors
#'
#' @inheritParams scale_colour_lifebrain
#' @export
scale_fill_lifebrain <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- lifebrain_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("lifebrain_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}


## quiets concerns of R CMD check
if(getRversion() >= "2.15.1"){
  utils::globalVariables(c("palette",
                           "discrete",
                           "reverse",
                           "%+replace%"))
}

