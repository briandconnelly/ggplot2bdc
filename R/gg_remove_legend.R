#' Remove a legend or parts of a legend from a plot
#' 
#' \code{gg_remove_legend} Removes a plot's legend or some of its components
#'
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' @param title Whether or not to remove the legend's title
#' (default: \code{TRUE})
#' @param key Whether or not to remove the legend's key
#' (default: \code{TRUE})
#' @param text Whether or not to remove the legend's key text
#' (default: \code{TRUE})
#' @param background Whether or not to remove the legend's background
#' (default: \code{TRUE})
#' @return A modified ggplot2 plot
#' @export
#'
#' @examples
#' p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
#'     geom_point(shape = 1)
#' gg_remove_legend(plot = p)
#' 
gg_remove_legend <- function(plot = last_plot(), title = TRUE,
                             key = TRUE, text = TRUE, background = TRUE) {
    if (all(title, key, text, background)) {
        plot <- plot + theme(legend.position = "none")
    }
    else {
        if (title) plot <- plot + theme(legend.title = element_blank())
        if (key) {
            plot <- plot + theme(legend.key = element_blank(),
                                 legend.key.size = unit(0, "pt"),
                                 legend.key.height = unit(0, "pt"),
                                 legend.key.width = unit(0, "pt"))
        }
        if (text) plot <- plot + theme(legend.text = element_blank())
        if (background) {
            plot <- plot + theme(legend.background = element_blank())
        }
    }

    plot
}


#' @description \code{gg_remove_legend_title} Removes legend's title
#' @rdname gg_remove_legend
#' @export
gg_remove_legend_title <- function(plot = last_plot()) {
    gg_remove_legend(plot = plot, title = TRUE, key = FALSE, text = FALSE,
                     background = FALSE)
}


#' @description \code{gg_remove_legend_key} Removes legend's key
#' @rdname gg_remove_legend
#' @export
gg_remove_legend_key <- function(plot = last_plot()) {
    gg_remove_legend(plot = plot, title = FALSE, key = TRUE, text = FALSE,
                     background = FALSE)
}


#' @description \code{gg_remove_legend_text} Removes legend's item labels
#' @rdname gg_remove_legend
#' @export
gg_remove_legend_text <- function(plot = last_plot()) {
    gg_remove_legend(plot = plot, title = FALSE, key = FALSE, text = TRUE,
                     background = FALSE)
}


#' @description \code{gg_remove_legend_background} Removes legend's background
#' @rdname gg_remove_legend
#' @export
gg_remove_legend_background <- function(plot = last_plot()) {
    gg_remove_legend(plot = plot, title = FALSE, key = FALSE, text = FALSE,
                     background = TRUE)
}
