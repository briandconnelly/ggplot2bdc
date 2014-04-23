#' Set aspect ratio according to the golden ratio
#' 
#' \code{coord_golden} sets the aspect ratio of the axes in the plot according
#' to the golden ratio.
#' 
#' @export
#' @param xvals Vector containing the values plotted along the X axis
#' @param yvals Vector containing the values plotted along the Y axis
#' @param orientation Whether the golden ratio should be "horizontal" or
#' "vertical" (default: horizontal)
#' @seealso ratio_golden
#' @examples
#' library(ggplot2)
#' 
#' p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() +
#'          coord_golden(xvals=mtcars$hp, yvals=mtcars$mpg)
#' p 

coord_golden <- function (xvals, yvals, orientation="horizontal")
{    
    if(missing(xvals)) stop("Must provide xvals")
    if(missing(yvals)) stop("Must provide yvals")
    
    return(coord_fixed(ratio=ratio_golden(xvals=xvals, yvals=yvals,
                                          orientation=orientation)))
}
