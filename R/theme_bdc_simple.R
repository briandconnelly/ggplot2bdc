#' Simple theme with black axes and ticks
#' 
#' `theme_bdc_simple` is a \code{\link{ggplot2}} theme that produces a "classic"
#' plot with black axes  on a white background. Grid lines can be enabled using
#' the \code{grid.x} and \code{grid.y} parameters.
#' 
#' @export
#' @param base_size The base size for all text (default: 12)
#' @param base_family The base font family for all text
#' @param grid.x Show grid lines along the X axis (default: FALSE)
#' @param grid.y Show grid lines along the Y axis (default: FALSE)
#' @param ticks.x Show tick marks along the X axis (default: TRUE)
#' @param ticks.y Show tick marks along th Y axis (default: TRUE)
#' @return A list of ggplot theme parameters
#' @seealso \code{\link{theme}}
#' @examples
#' library(ggplot2)
#' 
#' p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + theme_bdc_simple()
#' p
theme_bdc_simple <- function (base_size=12, base_family="", grid.x=FALSE,
                              grid.y=FALSE, ticks.x=TRUE, ticks.y=TRUE)
{
    theme(complete=TRUE,
          line = element_line(colour="black", size=0.5, linetype=1,
                              lineend="square"),
          rect = element_rect(fill="white", colour="black", size=0.5,
                              linetype=1),
          text = element_text(family=base_family, face="plain", colour="black",
                              size=base_size, hjust=0.5, vjust=0.5, angle=0,
                              lineheight=0.9),
          title = element_text(family=base_family, face="bold",
                               colour="black", vjust=0.0, hjust=0.5,
                               angle=0),
          
          plot.background = element_rect(fill="transparent",
                                         colour=NA),
          plot.title = element_text(size=rel(1.2), vjust=0.8),
          plot.margin = unit(c(1, 1, 1, 1), "lines"),
          
          panel.background = element_rect(fill="white", colour=NA),
          panel.border = element_rect(fill="transparent", colour=NA),
          panel.grid.major = element_line(color=NA, size=0.1),
          panel.grid.major.x = element_line(color=ifelse(grid.x, "grey90", NA)),
          panel.grid.major.y = element_line(color=ifelse(grid.y, "grey90", NA)),
          panel.grid.minor = element_line(color=NA), 
          panel.margin = unit(0.5, "lines"),
          
          strip.background = element_rect(fill="grey80", colour=NA),
          strip.text = element_text(size=rel(0.8)),
          strip.text.x = element_text(),
          strip.text.y = element_text(angle=-90),
          
          axis.text = element_text(size=rel(0.8)),
          axis.line = element_line(),
          axis.text.x = element_text(), 
          axis.text.y = element_text(hjust=1),
          axis.title.x = element_text(),
          axis.title.y = element_text(angle=90, vjust=1), 
          axis.ticks.x = element_line(size=ifelse(ticks.x, 0.5, 0)), 
          axis.ticks.y = element_line(size=ifelse(ticks.y, 0.5, 0)), 
          axis.ticks.length = unit(0.15, "cm"),
          axis.ticks.margin = unit(0.1, "cm"),
          
          legend.background = element_rect(fill="grey90", colour=NA), 
          legend.margin = unit(0, "cm"),
          legend.key = element_rect(fill="transparent", color=NA),
          legend.key.size = unit(0.5, "lines"), 
          legend.key.height = unit(0.5, "lines"),
          legend.key.width = unit(0.7, "lines"),
          legend.text = element_text(size=rel(0.6), colour="grey40"),
          legend.text.align = 0.5,
          legend.title = element_text(size=rel(0.7)),
          legend.title.align = 0,
          legend.position = "top",
          legend.direction = "horizontal",
          legend.justification = "center",
          legend.box = "horizontal"     
    )
}
