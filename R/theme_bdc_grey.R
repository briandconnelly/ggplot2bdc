#' Clean theme with grey box and axis ticks
#' 
#' \code{theme_bdc_grey} is a \code{\link{ggplot2}} theme that produces a plot
#' in a simple grey panel on a white background. Facet labels are displayed as
#' black text on a grey background. Grid lines can be enabled using
#' the \code{grid.x} and \code{grid.y} parameters. Tick marks can be disabled
#' using the \code{ticks.x} and \code{ticks.y} parameters.
#' 
#' @export
#' @aliases theme_bdc_gray
#' @param base_size The base size for all text (default: 12)
#' @param base_family The base font family for all text
#' @param base_grey The base color to use for rects, lines, etc (default: "grey70")
#' @param grid.x Show grid lines along the X axis (default: FALSE)
#' @param grid.y Show grid lines along the Y axis (default: FALSE)
#' @param gridmin.x Show minor grid lines along the X axis (default: FALSE)
#' @param gridmin.y Show minor grid lines along the Y axis (default: FALSE)
#' @param ticks.x Show tick marks along the X axis (default: TRUE)
#' @param ticks.y Show tick marks along th Y axis (default: TRUE)
#' @param pmargin Margin around the plot (default: 1/2 line)
#' @return A list of ggplot theme parameters
#' @seealso \code{\link{theme}}
#' @import ggplot2
#' @importFrom grid unit
#' @examples
#' library(ggplot2)
#' 
#' p <- ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point() + theme_bdc_grey()
#' p
#' 
#' 

theme_bdc_grey <- function(base_size = 12, base_family = "",
                           base_grey = "grey70",
                           grid.x = FALSE, grid.y = FALSE,
                           gridmin.x = grid.x, gridmin.y = grid.y,
                           ticks.x = TRUE, ticks.y = TRUE,
                           pmargin = base_size / 2) {
        half_line <- base_size / 2
        quarter_line <- base_size / 4
        line_size <- 0.5
        medgrey <- "grey40"

        t <- theme(
            line = element_line(color = base_grey, size = line_size,
                                linetype = 1, lineend = "square"),
            rect = element_rect(fill = "white", color = base_grey,
                                size = line_size, linetype = 1),
            text = element_text(family = base_family, face = "plain",
                                color = "black", size = base_size,
                                lineheight = 0.9, hjust = 0.5, vjust = 0.5,
                                angle = 0, margin = margin(), debug = FALSE),

            axis.line = element_blank(),
            axis.text = element_text(size = rel(0.8), color = medgrey),
            axis.text.x = element_text(
                margin = margin(t = 0.8 * quarter_line),
                vjust = 1
            ),
            axis.text.y = element_text(
                margin = margin(r = 0.8 * quarter_line),
                hjust = 1
            ),
            axis.ticks = element_line(size = line_size / 2),
            axis.ticks.x = element_line(
                size = ifelse(ticks.x, line_size / 2, 0)
            ),
            axis.ticks.y = element_line(
                size = ifelse(ticks.y, line_size / 2, 0)
            ),
            axis.ticks.length = unit(quarter_line, units = "pt"),
            axis.title.x = element_text(
                margin = margin(t = 0.8 * half_line, b = 0.8 * quarter_line)
            ),
            axis.title.y = element_text(
                angle = 90,
                margin = margin(r = 0.8 * half_line, l = 0.8 * quarter_line)
            ),

            legend.background = element_rect(fill = "transparent", color = NA),
            legend.margin = unit(0, units = "cm"),
            legend.key = element_rect(fill = "transparent", color = NA),
            legend.key.size = unit(0.5, units = "lines"),
            legend.key.height = unit(0.5, units = "lines"),
            legend.key.width = unit(1.0, units = "lines"),
            legend.text = element_text(size = rel(0.6), hjust = 0, vjust = 0.5,
                                       color = medgrey),
            legend.text.align = NULL,
            legend.title = element_text(size = rel(0.6), face = "bold",
                                        vjust = 0.5),
            legend.title.align = 1,
            legend.position = "top",
            legend.direction = "horizontal",
            legend.justification = "left",
            legend.box = "vertical",

            panel.background = element_rect(fill = "white", color = base_grey),
            panel.border = element_blank(),
            panel.grid.major = element_line(color = NA, size = line_size / 5),
            panel.grid.major.x = element_line(
                color = ifelse(grid.x, base_grey, NA)
            ),
            panel.grid.major.y = element_line(
                color = ifelse(grid.y, base_grey, NA)
            ),
            panel.grid.minor = element_line(color = NA, size = line_size / 10),
            panel.grid.minor.x = element_line(
                color = ifelse(gridmin.x, base_grey, NA)
            ),
            panel.grid.minor.y = element_line(
                color = ifelse(gridmin.y, base_grey, NA)
            ),
            panel.margin = unit(quarter_line, units = "pt"),
            panel.margin.x = NULL,
            panel.margin.y = NULL,
            panel.ontop = FALSE,

            strip.background = element_rect(fill = "transparent", color = NA),
            strip.text = element_text(
                color = "grey40",
                size = rel(0.8),
                face = "bold"
            ),
            strip.text.x = element_text(
                margin = margin(t = quarter_line, b = quarter_line)
            ),
            strip.text.y = element_text(
                angle = -90,
                margin = margin(l = quarter_line, r = quarter_line)
            ),
            strip.switch.pad.grid = unit(0.1, units = "cm"),
            strip.switch.pad.wrap = unit(0.1, units = "cm"),

            plot.background = element_rect(color = "transparent"),
            plot.title = element_text(
                size = rel(1.2),
                face = "bold",
                hjust = 0,
                margin = margin(b = half_line * 1.2)
            ),
            plot.margin = margin(pmargin, pmargin, pmargin, pmargin),
            complete = TRUE
        )
        
        if(gg_supports_theme_attribute("plot.subtitle")) {
            
            t <- t + theme(plot.subtitle = element_text(
                size = rel(0.8),
                color = "grey40",
                face = "italic",
                hjust = 0,
                margin = margin(b = (base_size / 2) * 1.2)
            ))
        }
        
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
        
        t
}

#' @export
theme_bdc_gray <- theme_bdc_grey
