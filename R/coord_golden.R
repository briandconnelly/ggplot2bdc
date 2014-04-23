#' Set aspect ratio according to the golden ratio
#' 
#' \code{coord_golden} sets the aspect ratio of the axes in the plot according
#' to the golden ratio.
#' 
#' @export
#' @param xvalues Vector containing the values plotted along the X axis
#' @param yvalues Vector containing the values plotted along the Y axis
#' @examples
#' p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() +
#'          coord_golden(xvals=mtcars$hp, yvals=mtcars$mpg)
#' p 

coord_golden <- function (xvals, yvals)
{    
    if(missing(xvals)) stop("Must provide xvals")
    if(missing(yvals)) stop("Must provide yvals")
    
    gr <- (1+sqrt(5))/2
    return(coord_fixed(ratio=span(xvals)/span(yvals)/gr))
}
