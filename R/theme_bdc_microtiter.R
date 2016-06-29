#' Theme for displaying Microtiter plates
#' 
#' \code{theme_bdc_microtiter} is a \code{\link{ggplot2}} theme that produces a
#' plot that resembles a 96-well microtiter plate. This is useful for displaying
#' either data from the plate or information about the plate in a spatial
#' context.
#' 
#' @export
#' @param base_size The base size for all text (default: 14)
#' @param base_family The base font family for all text
#' @return A list of ggplot theme parameters
#' 
theme_bdc_microtiter <- function(base_size = 12, base_family = "") {
    t <- theme_bdc_grey(base_size = base_size, base_family = base_family,
                   grid.x = FALSE, grid.y = FALSE,
                   gridmin.x = FALSE, gridmin.y = FALSE,
                   ticks.x = FALSE, ticks.y = FALSE,
                   pmargin = base_size / 2) %+replace%
        theme(
            panel.margin = unit(0, units = "pt"),
            # This does not work with cowplot::switch_axis_position
            #axis.title = element_blank(),
            axis.title = element_text(size = 0),
            axis.text = element_text(size = rel(1.0), face = "bold"),
            axis.text.y = element_text(
                margin = margin(r = 0.4 * base_size, l = 0.4 * base_size)
            ),
            axis.text.x = element_text(
                margin = margin(t = 0.4 * base_size, b = 0.4 * base_size)
            ),
            axis.ticks.length = unit(0, "pt"),
            legend.position = "bottom",
            legend.direction = "horizontal",
            legend.box = "vertical",
            legend.margin = unit(6, "pt"),
            plot.title = element_text(
                size = rel(1.2),
                face = "bold",
                hjust = 0.5,
                margin = margin(b = (base_size / 2) * 1.2)
            )
        )

    if (gg_supports_theme_attribute("plot.subtitle")) {
        t <- t + theme(plot.subtitle = element_text(
            size = rel(0.8),
            color = "grey50",
            hjust = 0.5,
            margin = margin(b = (base_size / 2) * 1.2)
        ))
    }

    t
}
