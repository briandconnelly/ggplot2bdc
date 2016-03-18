#' Calculate the aspect ratio of data that would create a square
#' 
#' \code{ratio_square} returns the aspect ratio (\code{y/x}) that would produce
#' a plot where the space that covers one unit along the x axis would correspond
#' to 1 along the y axis.
#' 
#' @export
#' @note This function may be useful to establish a starting aspect ratio to
#' use when "\href{http://eagereyes.org/basics/banking-45-degrees}{banking to 45}".
#' @param xvals Vector containing the values plotted along the X axis
#' @param yvals Vector containing the values plotted along the Y axis
#' @return A numeric value containing the aspect ratio that would produce a plot
#' with square proportions
#' @examples
#' ratio <- ratio_square(xvals=mtcars$hp, yvals=mtcars$mpg)
#' 

ratio_square <- function (xvals, yvals) {
    span(xvals) / span(yvals)
}
