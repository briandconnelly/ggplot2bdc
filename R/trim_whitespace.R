#' Remove whitespace from around an image
#' 
#' \code{trim_whitespace} crops an image, removing any whitespace from around
#' it.
#' 
#' @note This function requires \href{http://pdfcrop.sourceforge.net}{PDFCrop}
#' for PDFs and \href{http://www.imagemagick.org/script/index.php}{ImageMagick}
#' for other formats.
#'
#' @param filename Image to be cropped
#' @param ... Optional arguments
#' @export
#'
#' @examples
#' \dontrun{
#' trim_whitespace("my_figure.pdf")
#' }
trim_whitespace <- function(filename, ...) {
    ext <- tolower(tools::file_ext(filename))
    full_path <- path.expand(filename)
    file_args <- sprintf("'%s' '%s'", full_path, full_path)
    other_args <- list(...)

    if (identical(ext, "pdf")) {
        margin_args <- NULL
        if ("margins" %in% names(other_args)) {
            if (length(other_args$margins) %in% c(1, 4)) {
                margin_args <- sprintf("--margins '%s'",
                                       paste0(other_args$margins,
                                              collapse = " "))
            }
            else {
                stop(sprintf("margins should have 1 or 4 values. %d given.",
                             length(margin)))
            }
        }
        system2(
            command = "pdfcrop",
            args = paste0(c(margin_args, file_args), collapse = " ")
        )
    } else {
        # Use magick package. At the moment, it's not working correctly.
        system2(
            command = "convert",
            args = paste0(c("-trim", file_args), collapse = " ")
        )
    }
}