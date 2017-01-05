#' Rescale a ggplot2 plot so that axes follow a given ratio
#' 
#' \code{gg_rescale} rescales the given ggplot2 so that the axes follow the
#' given ratio (horizontally). If a plot is not specified, the last plot
#' displayed is used.
#' 
#' @export
#' @param plot A ggplot2 plot object. By default, the last plot displayed is
#' used.
#' @param ratio The aspect ratio to use for the axes. This is independent of
#' units used in the plot, so the size of the X axis will be ratio times the
#' total size of the Y axis.
#' @return A modified ggplot2 plot
#' @examples
#' p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
#'     geom_point(shape = 1)
#' gg_rescale(ratio = 1.67)
#'
gg_rescale <- function(plot = last_plot(), ratio) {
    plot + theme(aspect.ratio = 1 / ratio)
}

#' @export
rescale_plot <- function(plot = last_plot(), ratio) {
    warning("rescale_plot is depricated. Use gg_rescale instead.")
    gg_rescale(plot = plot, ratio = ratio)
}


#' @description \code{gg_rescale_golden} rescales a ggplot2 plot so that axes
#' follow golden ratio
#' @rdname gg_rescale
#' @param orient Whether the golden ratio should be horizontal
#' (\code{h}; default) or vertical (\code{v})
#' @export
#' 
gg_rescale_golden <- function(plot = last_plot(), orient = "h") {
    gr <- (1 + sqrt(5)) / 2
    
    if (orient == "h") {
        gg_rescale(plot = plot, ratio = gr)
    }
    else if (orient == "v") {
        gg_rescale(plot = plot, ratio = 1/gr)
    }
    else {
        stop("Invalid orientation. Must be either 'h' or 'v'")
    }
}

#' @export
rescale_golden <- function(plot = last_plot()) {
    warning("rescale_golden is depricated. Use gg_rescale_golden instead.")
    gg_rescale_golden(plot = plot)
}


#' @description \code{gg_rescale_square} rescales a ggplot2 plot so that its
#' axes are square
#' @rdname gg_rescale
#' @export
#' 
gg_rescale_square <- function(plot = last_plot()) {
    gg_rescale(plot = plot, ratio = 1)
}

#' @export
rescale_square <- function(plot = last_plot()) {
    warning("rescale_square is depricated. Use gg_rescale_square instead.")
    gg_rescale_square(plot = plot)
}