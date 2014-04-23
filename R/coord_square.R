#' Set a square aspect ratio
#' 
#' \code{coord_square} sets the aspect ratio of the axes in the plot to 1:1 (a
#' square)
#' 
#' @export
#' @param xvalues Vector containing the values plotted along the X axis
#' @param yvalues Vector containing the values plotted along the Y axis
#' @examples
#' p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() +
#'          coord_square(xvals=mtcars$hp, yvals=mtcars$mpg)
#' p

coord_square <- function (xvals, yvals)
{
    if(missing(xvals)) stop("Must provide xvals")
    if(missing(yvals)) stop("Must provide yvals")
    return(coord_fixed(ratio=span(xvals)/span(yvals)))
}