#' Remove a plot's background.
#' 
#' \code{gg_remove_background} removes the background from the given plot. This
#' is useful for creating plots with transparent backgrounds
#'
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' @param canvas Whether or not to remove the background from the entire image (default: \code{TRUE})
#' @param panel Whether or not to remove the background from the panel (i.e., the plotting area; default: \code{FALSE})
#' @param legend Whether or not to remove the legend's background
#' (default: \code{FALSE})
#' @param facet Whether or not to remove the background from facet labels
#' (default: \code{FALSE})
#'
#' @return A modified ggplot2 plot
#' @export
#'
#' @examples
#' p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
#'     geom_point(shape = 1)
#' gg_remove_background(plot = p)
#'
gg_remove_background <- function(plot = last_plot(), canvas = TRUE,
                                 panel = FALSE, legend = FALSE, facet = FALSE) {
    if (canvas) plot <- plot + theme(plot.background = element_blank())
    if (panel) plot <- plot + theme(panel.background = element_blank())
    if (legend) plot <- plot + theme(legend.background = element_blank())
    if (facet) plot <- plot + theme(strip.background = element_blank())
    
    plot
}

#' \code{gg_remove_background_canvas} Removes TODO
#' @rdname gg_remove_background
#' @export
gg_remove_background_canvas <- function(plot = last_plot()) {
    gg_remove_background(plot = plot, canvas = TRUE, panel = FALSE,
                         legend = FALSE, facet = FALSE)
}


#' \code{gg_remove_background_panel} Removes TODO
#' @rdname gg_remove_background
#' @export
gg_remove_background_panel <- function(plot = last_plot()) {
    gg_remove_background(plot = plot, canvas = FALSE, panel = TRUE,
                         legend = FALSE, facet = FALSE)
}


#' \code{gg_remove_background_legend} Removes TODO
#' @rdname gg_remove_background
#' @export
gg_remove_background_legend <- function(plot = last_plot()) {
    gg_remove_background(plot = plot, canvas = FALSE, panel = FALSE,
                         legend = TRUE, facet = FALSE)
}


#' \code{gg_remove_background_facet} Removes TODO
#' @rdname gg_remove_background
#' @export
gg_remove_background_facet <- function(plot = last_plot()) {
    gg_remove_background(plot = plot, canvas = FALSE, panel = FALSE,
                         legend = FALSE, facet = TRUE)
}
