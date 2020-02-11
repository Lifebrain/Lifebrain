lifebrain_colors <- c(
  `yellow`        = "#f8ee33",
  `light yellow`  = "#fbf47d",
  `dark yellow`   = "#d7cd07",

  `light grey`   = "#d9d9d9",
  `grey`         = "#b2b2b2",
  `dark grey`    = "#404040",

  `white`    = "#f4f4f4",
  `black`    = "#1e1e1e"
)

#' Function to extract lifebrain colors as hex codes
#'
#' @param ... Character names of lifebrain_colors
#' @export
lifebrain_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (lifebrain_colors)

  cols <- match.arg(cols,
                    names(lifebrain_colors),
                    several.ok = TRUE)

  lifebrain_colors[cols]
}

lifebrain_palettes <- list(
  `main`  = lifebrain_cols("yellow", "black", "dark grey", "white"),

  `light`  = lifebrain_cols("light yellow", "light grey" ,"white"),

  `dark`   = lifebrain_cols("dark yellow", "dark grey" ,"black"),

  `yellow` = lifebrain_cols("light yellow", "yellow", "dark yellow"),

  `grey`  = lifebrain_cols("white", "light grey", "grey", "dark grey", "black")
)

#' Return function to interpolate a lifebrain color palette
#'
#' @param palette Character name of palette in lifebrain_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
lifebrain_pal <- function(palette = "main", reverse = FALSE, ...) {
  palette <- match.arg(palette, names(lifebrain_palettes))

  pal <- lifebrain_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}
