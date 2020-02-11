base_size_text <- 10
base_fam = "Helvetica"



#' ggplot minimal theme for lifebrain
#'
#' @param base_size text size
#' @export
theme_lifebrain <- function (base_size = base_size_text) {
  theme_lifebrain_grid() %+replace%
    ggplot2::theme(
      panel.grid = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank()
    )
}


#' ggplot theme for lifebrain
#'
#' @param base_size text size
#' @export
theme_lifebrain_grid <- function (base_size = base_size_text) {
  ggplot2::theme_grey(base_size = base_size, base_family = base_fam) %+replace%
    ggplot2::theme(
      line = lifebrain_line(lifebrain_cols("light grey")),
      text = lifebrain_text(lifebrain_cols("black")),
      panel.background  = lifebrain_rect(),
      panel.grid = lifebrain_line(lifebrain_cols("white")),
      panel.grid.minor = lifebrain_line(lifebrain_cols("white"),
                                   linetype = "longdash"),
      plot.background = lifebrain_rect(),
      plot.subtitle = lifebrain_text(lifebrain_cols("dark grey"),
                                face = "italic", vjust = 1, hjust = 0),
      axis.line = lifebrain_line(lifebrain_cols("light grey")),
      legend.background = lifebrain_rect(),
      legend.key = lifebrain_rect()
    )
}

#' ggplot void theme for lifebrain
#'
#' @param base_size text size
#' @export
theme_lifebrain_void <- function (base_size = base_size_text) {
  theme_lifebrain_grid() %+replace%
    ggplot2::theme(
      panel.background  =  ggplot2::element_blank(),
      panel.grid = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      plot.background = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),
      axis.text = ggplot2::element_blank(),
      axis.title =  ggplot2::element_blank(),
      axis.ticks =  ggplot2::element_blank()
    )
}


#' ggplot minimal theme for lifebrain
#'
#' @param base_size text size
#' @export
theme_lifebrain_dark <- function (base_size = base_size_text) {
  theme_lifebrain_dark_grid() %+replace%
    ggplot2::theme(
      panel.grid = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank()
    )
}


#' ggplot dark theme for lifebrain
#'
#' @param base_size text size
#' @export
theme_lifebrain_dark_grid <- function (base_size = base_size_text) {
  theme_lifebrain_grid() %+replace%
    ggplot2::theme(
      line = lifebrain_line(lifebrain_cols("dark grey")),
      text = lifebrain_text(lifebrain_cols("white")),
      panel.background  = lifebrain_rect(lifebrain_cols("black")),
      panel.grid = lifebrain_line(lifebrain_cols("dark grey")),
      panel.grid.minor = lifebrain_line(lifebrain_cols("dark grey"),
                                   linetype = "longdash"),
      plot.background = lifebrain_rect(lifebrain_cols("black")),
      plot.subtitle = lifebrain_text(lifebrain_cols("light grey"),
                                face = "italic", vjust = 1, hjust = 0),
      plot.caption = lifebrain_text(lifebrain_cols("light grey"),
                               face = "italic", hjust=1.05, size=15),
      axis.line = lifebrain_line(lifebrain_cols("white")),
      axis.text = lifebrain_text(lifebrain_cols("light grey")),
      legend.background = lifebrain_rect(),
      legend.key = lifebrain_rect()
    )
}


#' ggplot minimal theme for lifebrain
#'
#' @param base_size text size
#' @export
theme_lifebrain_dark_void <- function (base_size = base_size_text) {
  theme_lifebrain_dark() %+replace%
    ggplot2::theme(
      panel.grid = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),
      axis.text = ggplot2::element_blank(),
      axis.title = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank()
    )
}

lifebrain_text <- function(colour,
                      size = base_size_text,
                      lineheight = 0.9,
                      hjust = 0.5,
                      vjust = 0.5,
                      angle = 0,
                      face = "plain"){

  ggplot2::element_text(family = base_fam,
                        face = face,
                        colour =  colour,
                        hjust = hjust,
                        vjust = vjust,
                        angle = angle,
                        size = size,
                        lineheight = lineheight,
                        margin = ggplot2::margin(),
                        debug = FALSE)
}

lifebrain_line <- function(colour, linetype = "solid"){
  ggplot2::element_line(colour = colour,
                        size = .6,
                        linetype =  linetype,
                        lineend = "round")
}

lifebrain_rect <- function(fill = "transparent", colour = NA){
  ggplot2::element_rect(fill = fill, colour = colour)
}
