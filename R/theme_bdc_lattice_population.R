#' Theme for displaying populations structured on a lattice
#' 
#' \code{theme_bdc_lattice_population} is a \code{\link{ggplot2}} theme that
#' produces a plot where many graphical details such as tick marks and axis
#' labels and text have been removed. This theme is intended to be used to
#' display simluated populations where individuals are arranged on a lattice.
#' 
#' @export
#' @param base_size The base size for all text (default: 10)
#' @param base_family The base font family for all text
#' @return A list of ggplot theme parameters
#' @seealso \code{\link{theme}}
#'

theme_bdc_lattice_population <- function(base_size = 12, base_family = "") {
    t <- theme_void(base_size = base_size, base_family = base_family) %+replace%
        theme(
            panel.margin = unit(0, "pt"),
            plot.title = element_text(
                size = rel(1.2),
                face = "bold",
                hjust = 0,
                margin = margin(b = base_size * 0.6)
            ),
            plot.margin = margin(t = 0, r = 0, b = 0, l = 0),
            strip.text.x = element_text(
                margin = margin(t = 2, b = 2)
            ),
            strip.text.y = element_text(
                angle = -90,
                margin = margin(l = 2, r = 2)
            )
        )
    
    if(gg_supports_theme_attribute("plot.caption")) {
        t <- t + theme(plot.caption = element_text(
            size = rel(0.7),
            color = "grey40",
            face = "plain",
            hjust = 0,
            margin = margin(b = base_size * 0.4, t = base_size * 0.4,
                            r = 0, l = 0)
        ))
    }
    
    if(gg_supports_theme_attribute("plot.subtitle")) {
        t <- t + theme(plot.subtitle = element_text(
            size = rel(0.8),
            color = "grey40",
            face = "italic",
            hjust = 0,
            margin = margin(b = base_size * 0.6)
        ))
    }
    
    t
}
