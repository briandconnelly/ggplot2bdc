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
#' @seealso \code{\link{theme}}
#' 

theme_bdc_microtiter <- function (base_size=14, base_family="")
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
          
          panel.background = element_rect(color='grey20', fill='white'),
          panel.border = element_rect(fill="transparent", color='grey20'),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(), 
          panel.margin = unit(0, "lines"),
          
          strip.background = element_rect(fill="grey70"),
          strip.text = element_text(size=rel(0.8)),
          strip.text.x = element_text(),
          strip.text.y = element_text(angle=-90),
          
          axis.text = element_text(face="bold"),
          axis.line = element_blank(),
          axis.text.x = element_text(), 
          axis.text.y = element_text(),
          axis.title=element_blank(),
          axis.ticks = element_blank(), 
          axis.ticks.length = unit(0, "cm"),
          axis.ticks.margin = unit(0.2, "cm"),
          
          legend.background = element_rect(fill="transparent", colour=NA), 
          legend.margin = unit(0, "cm"),
          legend.key = element_rect(fill="transparent", color=NA),
          legend.key.size = unit(0.3, "lines"), 
          legend.key.height = unit(0.5, "lines"),
          legend.key.width = unit(0.7, "lines"),
          legend.text = element_text(size=rel(0.6), colour="grey40"),
          legend.text.align = 0.5,
          legend.title = element_text(size=rel(0.7)),
          legend.title.align = 0,
          legend.position = "bottom",
          legend.direction = "vertical",
          legend.justification = "center",
          legend.box = "horizontal"     
    )
}

#' Label ggplot2 facets with row letters and column numbers
#' 
#' \code{plate_labeller} is given as an argument to \code{\link{facet_grid}}
#' in order to format row and column numbers as row letters (A-H) and column
#' numbers (1-12) as is commonly shown on microtiter plates.
#' 
#' @export
#' @param variable The name of the variable being used for this label
#' @param value The value of that variable to be used as a facet
#' @return A character containing the label to be used for the facet
#' 

plate_labeller <- function(variable, value)
{
    if(variable=="Row")
    {
        return(LETTERS[value])
    }
    else
    {
        return(value)
    }
}
