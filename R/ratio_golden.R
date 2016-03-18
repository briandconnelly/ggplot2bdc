#' Calculate the aspect ratio of data that would follow the golden ratio
#' 
#' \code{ratio_golden} returns the aspect ratio (\code{y/x}) that would produce
#' a plot where the space that covers one unit along the x axis would correspond
#' to 1.618034 units along the y axis.
#' 
#' @export
#' @param xvals Vector containing the values plotted along the X axis
#' @param yvals Vector containing the values plotted along the Y axis
#' @param orientation Whether the golden ratio should be "horizontal" or
#' "vertical" (default: horizontal)
#' @return A numeric value containing the aspect ratio that would produce a plot
#' with proportions that follow the golden ratio
#' @examples
#' ratio <- ratio_golden(xvals=mtcars$hp, yvals=mtcars$mpg)
#' 

ratio_golden <- function (xvals, yvals, orientation = "horizontal")
{
    gr <- (1+sqrt(5))/2
    
    if(orientation=="horizontal")
    {
        return(span(xvals)/span(yvals)/gr)
    }
    else if(orientation=="vertical")
    {
        return(span(yvals)/span(xvals)/gr)
    }
    else
    {
        stop("Orientation must be either 'horizontal' or 'vertical'")
    }
}
