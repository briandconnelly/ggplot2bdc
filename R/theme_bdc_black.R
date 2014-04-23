#' Clean theme with black box and axis ticks
#' 
#' `theme_bdc_black` is a \code{\link{ggplot2}} theme that produces a plot in
#' a simple black panel on a white background. Facet labels are displayed as
#' black text on a grey background. Grid lines can be enabled using
#' the \code{grid.x} and \code{grid.y} parameters.
#' 
#' @export
#' @param base_size The base size for all text (default: 12)
#' @param base_family The base font family for all text
#' @param grid.x Show grid lines along the X axis (default: FALSE)
#' @param grid.y Show grid lines along the Y axis (default: FALSE)
#' @return A list of ggplot theme parameters
#' @seealso \code{\link{theme}}
#' @examples
#' library(ggplot2)
#' 
#' p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + theme_bdc_black()
#' p
#'
theme_bdc_black <- function (base_size=12, base_family="", grid.x=FALSE,
                             grid.y=FALSE)
{
    theme_bdc_grey(base_size=base_size, base_family=base_family, grid.x=grid.x,
                   grid.y=grid.y) + 
        theme(line = element_line(colour="black", size=0.5, linetype=1,
                                  lineend="square"),
              rect = element_rect(fill="white", colour="black", size=0.5,
                                  linetype=1),
              panel.grid.major.x = element_line(color=ifelse(grid.x, "grey70", NA)),
              panel.grid.major.y = element_line(color=ifelse(grid.y, "grey70", NA))
              )
}
