#' Rescale a ggplot2 plot so that axes follow golden ratio
#' 
#' \code{rescale_golden} rescales the given ggplot2 so that the axes follow the
#' golden ratio (horizontally).
#' 
#' @export
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' @examples
#' p <- ggplot(mtcars, aes(x=cyl, y=mpg)) +
#'     geom_point(shape=1)
#' rescale_golden()

rescale_golden <- function(plot=last_plot())
{
    gr <- (1 + sqrt(5))/2
    return(rescale_plot(plot=plot, ratio=gr))
}