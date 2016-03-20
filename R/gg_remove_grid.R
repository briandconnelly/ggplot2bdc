#' Remove grid lines from a plot
#' 
#' \code{gg_remove_grid} removes either the major or minor grid lines on either
#' axis.
#' 
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' @param major.x Whether or not to remove grid lines at major breakpoints along the X axis (default: \code{TRUE})
#' @param major.y Whether or not to remove grid lines at major breakpoints along the Y axis (default: \code{TRUE})
#' @param minor.x Whether or not to remove grid lines at minor breakpoints along the X axis (default: \code{TRUE})
#' @param minor.y Whether or not to remove grid lines at minor breakpoints along the Y axis (default: \code{TRUE})
#' @return A modified ggplot2 plot
#'
#' @export
#' @examples
#' p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
#'     geom_point(shape = 1)
#' gg_remove_grid(plot = p)
#' 
gg_remove_grid <- function(plot = last_plot(), major.x = TRUE, major.y = TRUE,
                           minor.x = TRUE, minor.y = TRUE) {
    if (major.x) plot <- plot + theme(panel.grid.major.x = element_blank())
    if (major.y) plot <- plot + theme(panel.grid.major.y = element_blank())
    if (minor.x) plot <- plot + theme(panel.grid.minor.x = element_blank())
    if (minor.y) plot <- plot + theme(panel.grid.minor.y = element_blank())

    plot
}

#' @description \code{gg_remove_grid_major} Removes grid lines at major breaks
#' @rdname gg_remove_grid
#' @export
gg_remove_grid_major <- function(plot = last_plot(), major.x = TRUE,
                                 major.y = TRUE) {
    gg_remove_grid(plot = plot, major.x = major.x, major.y = major.y,
                   minor.x = FALSE, minor.y = FALSE)
}


#' @description \code{gg_remove_grid_minor} Removes grid lines at minor breaks
#' @rdname gg_remove_grid
#' @export
gg_remove_grid_minor <- function(plot = last_plot(), minor.x = TRUE,
                                 minor.y = TRUE) {
    gg_remove_grid(plot = plot, major.x = FALSE, major.y = FALSE,
                   minor.x = minor.x, minor.y = minor.y)
}


#' @description \code{gg_remove_grid_x} Removes grid lines at major and minor
#' breaks on the X axis
#' @rdname gg_remove_grid
#' @export
gg_remove_grid_x <- function(plot = last_plot(), major = TRUE, minor = TRUE) {
    gg_remove_grid(plot = plot, major.x = major, major.y = FALSE,
                   minor.x = minor, minor.y = FALSE)
}


#' @description \code{gg_remove_grid_y} Removes grid lines at major and minor
#' breaks on the X axis
#' @rdname gg_remove_grid
#' @export
gg_remove_grid_y <- function(plot = last_plot(), major = TRUE, minor = TRUE) {
    gg_remove_grid(plot = plot, major.x = FALSE, major.y = major,
                   minor.x = FALSE, minor.y = minor)
}
