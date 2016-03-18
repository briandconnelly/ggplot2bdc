#' Remove tick marks from a plot's axes
#' 
#' \code{gg_remove_ticks} can remove ticks on either the X or Y axes. By
#' default, all tick marks are removed.
#'
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' @param x Whether or not to remove X-axis ticks (default: \code{TRUE})
#' @param y Whether or not to remove Y-axis ticks (default: \code{TRUE})
#' @return A modified ggplot2 plot
#' @export
#'
#' @examples
#' p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
#'     geom_point(shape = 1)
#' gg_remove_ticks(plot = p)
#' 
gg_remove_ticks <- function(plot = last_plot(), x = TRUE, y = TRUE) {
    if (x) plot <- plot + theme(axis.ticks.x = element_blank())
    if (y) plot <- plot + theme(axis.ticks.y = element_blank())

    plot
}

#' @description \code{gg_remove_ticks_x} removes tick marks from the X axis
#' @rdname gg_remove_ticks
#' @export
gg_remove_ticks_x <- function(plot = last_plot()) {
    gg_remove_ticks(plot = plot, x = TRUE, y = FALSE)
}

#' @description \code{gg_remove_ticks_y} removes tick marks from the Y axis
#' @rdname gg_remove_ticks
#' @export
gg_remove_ticks_y <- function(plot = last_plot()) {
    gg_remove_ticks(plot = plot, x = FALSE, y = TRUE)
}
