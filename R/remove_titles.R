#' Remove axis titles
#' 
#' \code{remove_titles} removes the titles from both the X and Y axes on the
#' given plot, while \code{remove_title_x} and \code{remove_title_y} remove the
#' title from the X and Y axes, respectively. When building a plot, including
#' \code{theme_no_titles} will modify the current theme so that no axis titles
#' are shown. Inluding \code{theme_no_title_x} or \code{theme_no_title_y} will
#' remove titles for the X and Y axes, respectively.
#' 
#' As a general rule, \code{remove_titles} is used to modify an existing plot,
#' and \code{theme_no_titles} is used while building a plot.
#' 
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' 
#' @export
#' @return \code{remove_titles}, \code{remove_title_x}, and
#' \code{remove_title_y} return a modified ggplot2 plot object.
#' @note Obviously, axis titles are often an important part of a plot. These
#' functions are intended for the rare situations where that is not the case, 
#' or the information is conveyed elsewhere.
#' @examples
#' # Build a plot. Afterwards, remove the X axis title
#' p_total <- ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
#'     geom_point()
#' remove_title_x(plot=p_total)
#' 
#' # The same, but with pipes
#' library(magrittr)
#' p_total <- ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
#'     geom_point() %>% remove_title_x()
#' 
#' # While building a plot, set the theme to not include an X axis title
#' p_total <- ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
#'     geom_point() +
#'     hide_title_x()
#' 
remove_titles <- function(plot=last_plot()) plot + theme_no_titles()


#' @export
#' @rdname remove_titles
remove_title_x <- function(plot=last_plot()) plot + theme_no_title_x()


#' @export
#' @rdname remove_titles
remove_title_y <- function(plot=last_plot()) plot + theme_no_title_y()


#' @export
#' @rdname remove_titles
theme_no_title_x <- function() ggplot2::theme(axis.title.x = ggplot2::element_blank())


#' @export
#' @rdname remove_titles
theme_no_title_y <- function() ggplot2::theme(axis.title.y = ggplot2::element_blank())


#' @export
#' @rdname remove_titles
#' @return \code{theme_no_titles}, \code{theme_no_title_x}, and
#' \code{theme_no_title_y} return settings for theme elements that result in no
#' axis tick marks being displayed.
theme_no_titles <- function() theme_no_title_x() + theme_no_title_y()
