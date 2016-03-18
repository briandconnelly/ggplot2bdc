#' Clean theme with black box and axis ticks
#'
#' \code{theme_bdc_simplefacets} is a \code{\link{ggplot2}} theme that produces
#' a plot in a simple black panel on a white background. Facet labels are
#' displayed as black text on a transparent background. Grid lines can be
#' enabled using the \code{grid.x} and \code{grid.y} parameters.
#' 
#' @export
#' @param base_size The base size for all text (default: 12)
#' @param base_family The base font family for all text
#' @param grid.x Show grid lines along the X axis (default: FALSE)
#' @param grid.y Show grid lines along the Y axis (default: FALSE)
#' @param gridmin.x Show minor grid lines along the X axis (default: FALSE)
#' @param gridmin.y Show minor grid lines along the Y axis (default: FALSE)
#' @param ticks.x Show tick marks along the X axis (default: TRUE)
#' @param ticks.y Show tick marks along th Y axis (default: TRUE)
#' @param pmargin Margin around the plot (default: 1/2 line)
#' @return A list of ggplot theme parameters
#' @seealso \code{\link{theme}}
#' @examples
#' library(ggplot2)
#' 
#' p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + theme_bdc_simplefacets()
#' p

theme_bdc_simplefacets <- function(base_size = 12, base_family = "",
                           grid.x = FALSE, grid.y = FALSE,
                           gridmin.x = grid.x, gridmin.y = grid.y,
                           ticks.x = TRUE, ticks.y = TRUE,
                           pmargin = base_size / 2) {

    quarter_line <- base_size / 4

    theme_bdc_grey(base_size = base_size, base_family = base_family,
                   grid.x = grid.x, grid.y = grid.y,
                   gridmin.x = gridmin.x, gridmin.y = gridmin.y,
                   ticks.x = ticks.x, ticks.y = ticks.y,
                   pmargin = pmargin) %+replace%
        theme(
            strip.background = element_rect(fill = "transparent", colour = NA),
            strip.text = element_text(
                color = "grey50",
                size = rel(0.8)
            ),
            strip.text.x = element_text(
                margin = margin(t = quarter_line, b = quarter_line)
            ),
            strip.text.y = element_text(
                angle = -90,
                margin = margin(l = quarter_line, r = quarter_line)
            )
        )
}