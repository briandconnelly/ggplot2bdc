#' Rescale a ggplot2 plot so that axes follow golden ratio
#' 
#' \code{rescale_golden} rescales the given ggplot2 so that the axes follow the
#' golden ratio (horizontally).
#' 
#' @export
#' @param plot A ggplot2 plot object. By defauly, the last plot displayed is
#' used.
#' @examples
#' p <- ggplot(mtcars, aes(x=cyl, y=mpg)) +
#'     geom_point(shape=1)
#' rescale_golden()

rescale_golden <- function(plot=last_plot())
{
    gr <- (1 + sqrt(5))/2
    built <- ggplot_build(plot)
    xvals <- unique(unlist(lapply(built$data, function(l) l$x)))
    yvals <- unique(unlist(lapply(built$data, function(l) l$y)))

    return(plot + coord_fixed(ratio=span(xvals)/span(yvals)/gr))  
}
