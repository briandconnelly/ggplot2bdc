#' Calculate the distance between the minimum and maximum values
#' 
#' \code{span} calculates the distance between a vector's minimum and maximum
#' values. Only finite and non-NA values are considered.
#' 
#' @export
#' @examples
#' vals <- sample(1:100, 10)
#' span(vals)
#'
span <- function(n) {
    diff(range(n, na.rm = TRUE, finite = TRUE))
}
