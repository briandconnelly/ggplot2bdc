#' Rescale a ggplot2 plot so that the axes have equal proportions
#' 
#' \code{rescale_golden} rescales the given ggplot2 so that the axes have equal
#' proportions
#' 
#' @export
#' @param plot A ggplot2 plot object. By defauly, the last plot displayed is
#' used.
#' @examples
#' p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
#'     geom_point(shape = 1)
#' rescale_square()

rescale_square <- function(plot = last_plot())
{
    rescale_plot(plot = plot, ratio = 1) 
}
