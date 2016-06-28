
#' Determine whether installed ggplot2 supports a given theme attribute
#'
#' @param x The name of an attribute (e.g., "plot.caption")
#'
#' @return A logical value indicating whether the given attribute is supported
#' (\code{TRUE}) or not (\code{FALSE}).
#' @importFrom ggplot2 theme_grey
#' @export
#'
#' @examples
#' gg_supports_theme_attribute("plot.caption")
#' 
gg_supports_theme_attribute <- function(x) {
    x %in% names(ggplot2::theme_grey())
}
