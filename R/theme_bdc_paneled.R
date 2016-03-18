#' Clean, borderless theme with grey panels and axis ticks
#' 
#' \code{theme_bdc_paneled} is a \code{\link{ggplot2}} theme that produces a plot
#' with simple grey panels on a white background. Facet labels are displayed as
#' black text. Grid lines can be enabled using  the \code{grid.x} and
#' \code{grid.y} parameters. By default, grid lines along the Y axis are shown.
#' Tick marks can be disabled using the \code{ticks.x} and \code{ticks.y}
#' parameters.
#' 
#' @export
#' @param base_size The base size for all text (default: 12)
#' @param base_family The base font family for all text
#' @param grid.x Show grid lines along the X axis (default: FALSE)
#' @param grid.y Show grid lines along the Y axis (default: TRUE)
#' @param gridmin.x Show minor grid lines along the X axis (default: FALSE)
#' @param gridmin.y Show minor grid lines along the Y axis (default: FALSE)
#' @param ticks.x Show tick marks along the X axis (default: TRUE)
#' @param ticks.y Show tick marks along th Y axis (default: TRUE)
#' @param panelbg Background color for panels (default: grey95)
#' @param pmargin Margin around the plot (default: 1/2 line)
#' @return A list of ggplot theme parameters
#' @seealso \code{\link{theme}}
#' @examples
#' library(ggplot2)
#' 
#' p <- ggplot(movies, aes(x=year, y=budget)) + geom_point() + theme_bdc_paneled()
#' p
#' 
theme_bdc_paneled <- function(base_size = 12, base_family = "",
                              grid.x = FALSE, grid.y = TRUE,
                              gridmin.x = FALSE, gridmin.y = FALSE,
                              ticks.x = TRUE, ticks.y = TRUE,
                              panelbg = "grey95",
                              pmargin = base_size / 2) {
    
    line_size <- 0.5
    
    theme_bdc_grey(base_size = base_size, base_family = base_family,
                   grid.x = grid.x, grid.y = grid.y,
                   gridmin.x = gridmin.x, gridmin.y = gridmin.y,
                   ticks.x = ticks.x, ticks.y = ticks.y,
                   pmargin = pmargin) %+replace%
        theme(
            line = element_line(colour = "grey85", size = line_size / 4,
                                linetype = 1, lineend = "square"),
            rect = element_rect(fill = "white", colour = "grey85",
                                size = line_size, linetype = 1),
            panel.background = element_rect(fill = panelbg, color = NA),
            #axis.ticks = element_line(color = "grey85", size = line_size / 4),
            axis.ticks.x = element_line(
                colour = ifelse(ticks.x, "grey75", NA),
                size = ifelse(ticks.x, line_size / 4, 0)
            ),
            axis.ticks.y = element_line(
                colour = ifelse(ticks.y, "grey75", NA),
                size = ifelse(ticks.y, line_size / 4, 0)
            ),
            strip.background = element_rect(fill = "grey85", colour = "grey85")
        )
}