#' Save a plot with proportions equal to the golden ratio
#'
#' \code{ggsave_golden} is a wrapper for \code{\link{ggsave}} that saves a
#' ggplot to a file with proportions equal to the golden ratio (wide).
#'
#' @export
#' @param filename The name of the file to be written to
#' @param plot The plot object to save. Defaults to last plot displayed.
#' @param width The width of the resulting image (default: 8)
#' @param height The height of the resulting image (default: 4.94)
#' @param ... Additional parameters to be passed to \code{\link{ggsave}}
#' @importFrom ggplot2 ggsave

ggsave_golden <- function(filename, plot=last_plot(), ...) {
    ggsave(filename = filename, plot = plot, width = 8,
           height = 8/1.61803398875, ...)
}
