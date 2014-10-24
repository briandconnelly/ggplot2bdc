#' Rescale a ggplot2 plot so that axes follow a given ratio
#' 
#' \code{rescale_plot} rescales the given ggplot2 so that the axes follow the
#' given ratio (horizontally).
#' 
#' @export
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' @param ratio The aspect ratio to use for the axes. This is independent of
#' units used in the plot, so the size of the X axis will be ratio times the
#' total size of the Y axis.
#' @seealso \code{\link{rescale_golden}}, \code{\link{rescale_square}}
#' @examples
#' p <- ggplot(mtcars, aes(x=cyl, y=mpg)) +
#'     geom_point(shape=1)
#' rescale_plot(ratio=1.67)

rescale_plot <- function(plot=last_plot(), ratio)
{
    built <- ggplot_build(plot)
    xvals <- unique(unlist(lapply(built$data, function(l) l$x)))
    yvals <- unique(unlist(lapply(built$data, function(l) l$y)))
    
    return(plot + coord_fixed(ratio=span(xvals)/span(yvals)/ratio))  
}