#' Clean theme with grey box and axis ticks
#' 
#' `theme_bdc_grey` is a \code{\link{ggplot2}} theme that produces a plot in
#' a simple grey panel on a white background. Grid lines can be enabled using
#' the \code{grid.x} and \code{grid.y} parameters.
#' 
#' @export
#' @param base_size The base size for all text (default: 12)
#' @param base_family The base font family for all text
#' @param grid.x Show grid lines along the X axis (default: FALSE)
#' @param grid.y Show grid lines along the Y axis (default: FALSE)
#' @return A list of ggplot theme parameters
#' @seealso \code{\link{theme}}
#' @examples
#' p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + theme_bdc_grey()
#' p
#' 
#' 
theme_bdc_grey <- function (base_size=12, base_family="", grid.x=FALSE,
                            grid.y=FALSE)
{
    theme(complete=TRUE,
          line = element_line(colour="grey70", size=0.5, linetype=1,
                              lineend="square"),
          rect = element_rect(fill="white", colour="grey70", size=0.5,
                              linetype=1),
          text = element_text(family=base_family, face="plain", colour="black",
                              size=base_size, hjust=0.5, vjust=0.5, angle=0,
                              lineheight=0.9),
          title = element_text(family=base_family, face="bold", colour="black",
                               vjust=0.0, hjust=0.5, angle=0),
          
          plot.background = element_rect(fill="transparent", colour=NA),
          plot.title = element_text(size=rel(1.2), vjust=0.8),
          plot.margin = unit(c(1, 1, 1, 1), "lines"),
          
          panel.background = element_rect(fill="white", colour=NA),
          panel.border = element_rect(fill="transparent"),
          panel.grid.major = element_line(color=NA, size=0.1),
          panel.grid.major.x = element_line(color=ifelse(grid.x, "grey90", NA)),
          panel.grid.major.y = element_line(color=ifelse(grid.y, "grey90", NA)),
          panel.grid.minor = element_line(color=NA), 
          panel.margin = unit(0.5, "lines"),
          
          strip.background = element_rect(fill="grey70"),
          strip.text = element_text(size=rel(0.8)),
          strip.text.x = element_text(),
          strip.text.y = element_text(angle=-90),
          
          axis.text = element_text(size=rel(0.8)),
          axis.line = element_line(color=NA),
          axis.text.x = element_text(), 
          axis.text.y = element_text(),
          axis.title.x = element_text(),
          axis.title.y = element_text(angle=90), 
          axis.ticks = element_line(size=0.3), 
          axis.ticks.length = unit(0.15, "cm"),
          axis.ticks.margin = unit(0.1, "cm"),
          
          legend.background = element_rect(fill="transparent", colour=NA), 
          legend.margin = unit(0, "cm"),
          legend.key = element_rect(fill="transparent", color=NA),
          legend.key.size = unit(1, "lines"), 
          legend.key.height = unit(1, "lines"),
          legend.key.width = unit(1, "lines"),
          legend.text = element_text(size=rel(0.8)),
          legend.text.align = 0.5,
          legend.title = element_text(),
          legend.title.align = 0,
          legend.position = "right",
          legend.direction = "vertical",
          legend.justification = "center",
          legend.box = "vertical"     
    )
}
