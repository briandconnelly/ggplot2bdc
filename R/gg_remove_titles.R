#' Remove titles from a plot
#' 
#' \code{gg_remove_titles} removes title elements such as the main title,
#' subtitle, caption, or axis titles. By default, all are removed.
#'
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used. 
#' @param title Whether or not to remove the main title (default: \code{TRUE})
#' @param subtitle Whether or not to remove the subtitle (default: \code{TRUE})
#' @param caption Whether or not to remove the caption (default: \code{TRUE})
#' @param x Whether or not to remove the X axis title (default: \code{TRUE})
#' @param y Whether or not to remove the Y axis title (default: \code{TRUE})
#'
#' @return A modified ggplot2 plot
#' @export
#'
#' @examples
#' p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
#'     geom_point(shape = 1) +
#'     labs(title = "Fuel Efficiency by Engine Type",
#'          subtitle = "Larger engines are less efficient",
#'          caption = "Source: Motor Trend",
#'          x = "Number of Cylinders",
#'          y = "Fuel Efficiency (MPG)")
#' gg_remove_titles(plot = p)
#'
gg_remove_titles <- function(plot = last_plot(), title = TRUE, subtitle = TRUE,
                            caption = TRUE, x = TRUE, y = TRUE) {
    if (title) plot <- plot + theme(plot.title = element_blank())
    if (subtitle) plot <- plot + theme(plot.subtitle = element_blank())
    if (caption) plot <- plot + theme(plot.caption = element_blank())
    if (x) plot <- plot + theme(axis.title.x = element_blank())
    if (y) plot <- plot + theme(axis.title.y = element_blank())

    plot
}


#' @description \code{gg_remove_title} Removes the plot's main title
#' @rdname gg_remove_titles
#' @export
gg_remove_title <- function(plot = last_plot()) {
    gg_remove_titles(title = TRUE, subtitle = FALSE, caption = FALSE, x = FALSE,
                     y = FALSE)
}


#' @description \code{gg_remove_subtitle} Removes the plot's subtitle
#' @rdname gg_remove_titles
#' @export
gg_remove_subtitle <- function(plot = last_plot()) {
    gg_remove_titles(title = FALSE, subtitle = TRUE, caption = FALSE, x = FALSE,
                     y = FALSE)
}


#' @description \code{gg_remove_caption} Removes the plot caption
#' @rdname gg_remove_titles
#' @export
gg_remove_caption <- function(plot = last_plot()) {
    gg_remove_titles(title = FALSE, subtitle = FALSE, caption = TRUE, x = FALSE,
                     y = FALSE)
}


#' @description \code{gg_remove_title.x} Removes the X-axis title
#' @rdname gg_remove_titles
#' @export
gg_remove_title.x <- function(plot = last_plot()) {
    gg_remove_titles(title = FALSE, subtitle = FALSE, caption = FALSE, x = TRUE,
                     y = FALSE)
}


#' @description \code{gg_remove_title.y} Removes the Y-axis title
#' @rdname gg_remove_titles
#' @export
gg_remove_title.y <- function(plot = last_plot()) {
    gg_remove_titles(title = FALSE, subtitle = FALSE, caption = FALSE,
                     x = FALSE, y = TRUE)
}
