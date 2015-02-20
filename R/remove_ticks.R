#' Remove tick marks
#' 
#' \code{remove_ticks} removes tick marks from both the X and Y axes on the
#' given plot, while \code{remove_ticks_x} and \code{remove_ticks_y} remove tick
#' marks from the X and Y axes, respectively. When building a plot, including
#' \code{theme_no_ticks} will modify the current theme so that no tick marks are
#' shown. Inluding \code{theme_no_ticks_x} or \code{theme_no_ticks_y} will
#' remove tick marks on the X and Y axes, respectively.
#' 
#' As a general rule, \code{remove_ticks} is used for an existing plot, and
#' \code{theme_no_ticks} is used while building a plot.
#' 
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' 
#' @export
#' @return \code{remove_ticks}, \code{remove_ticks_x}, and \code{remove_ticks_y}
#' return a modified ggplot2 plot object.
#' @examples
#' # Build a plot. Afterwards, remove the X axis tick marks
#' p_total <- ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
#'     geom_point()
#' remove_ticks_x(plot=p_total)
#' 
#' # The same, but with pipes
#' library(magrittr)
#' p_total <- ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
#'     geom_point() %>% remove_ticks_x()
#' 
#' # While building a plot, set the theme to not include X axis tick marks
#' p_total <- ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
#'     geom_point() +
#'     hide_ticks_x()
#' 
remove_ticks <- function(plot=last_plot()) plot + theme_no_ticks()


#' @export
#' @rdname remove_ticks
remove_ticks_x <- function(plot=last_plot()) plot + theme_no_ticks_x()


#' @export
#' @rdname remove_ticks
remove_ticks_y <- function(plot=last_plot()) plot + theme_no_ticks_y()


#' @export
#' @rdname remove_ticks
theme_no_ticks_x <- function() ggplot2::theme(axis.ticks.x = ggplot2::element_blank())


#' @export
#' @rdname remove_ticks
theme_no_ticks_y <- function() ggplot2::theme(axis.ticks.y = ggplot2::element_blank())


#' @export
#' @rdname remove_ticks
#' @return \code{theme_no_ticks}, \code{theme_no_ticks_x}, and
#' \code{theme_no_ticks_y} return settings for theme elements that result in no
#' axis tick marks being displayed.
theme_no_ticks <- function() theme_no_ticks_x() + theme_no_ticks_y() + ggplot2::theme(axis.ticks.margin = grid::unit(0.0, 'cm'))
