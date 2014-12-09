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

theme_bdc_lattice_population <- function (base_size=10, base_family="")
{
    theme(complete=TRUE,
          line = element_line(colour="grey70", size=0.5, linetype=1,
                              lineend="square"),
          rect= element_rect(fill="white", colour="grey70", size=0.5,
                             linetype=1),
          text = element_text(family=base_family, face="plain",
                              colour="black", size=base_size, hjust=0.5,
                              vjust=0.5, angle=0, lineheight=0.9),
          title = element_text(family=base_family, face="bold", colour="black",
                               vjust=0.0, hjust=0.5, angle=0),
          
          plot.background = element_rect(fill="transparent", colour=NA),
          plot.title = element_text(size=rel(1.2), vjust=0.2, hjust=0.95,
                                    face="bold"),
          plot.margin = unit(c(1, 1, 1, 1), "lines"),
          
          panel.background = element_rect(fill="white", colour=NA),
          panel.border = element_rect(fill="transparent"),
          panel.grid.major = element_blank(),
          panel.grid.major.x = element_blank(),
          panel.grid.major.y = element_blank(),
          panel.grid.minor = element_blank(), 
          panel.margin = unit(0.0, "lines"),
          
          strip.background = element_rect(fill="grey70"),
          strip.text = element_text(size=rel(0.8)),
          strip.text.x = element_text(),
          strip.text.y = element_text(angle=-90),
          
          axis.text = element_blank(),
          axis.line = element_blank(),
          axis.text.x = element_blank(), 
          axis.text.y = element_blank(),
          axis.title.x = element_blank(),
          axis.title.y = element_blank(), 
          axis.ticks.x = element_blank(), 
          axis.ticks.y = element_blank(), 
          axis.ticks.length = unit(0, "cm"),
          axis.ticks.margin = unit(0, "cm"),
          
          legend.background = element_rect(fill="transparent", colour=NA), 
          legend.margin = unit(0, "cm"),
          legend.key = element_rect(fill="transparent", color=NA),
          legend.key.size = unit(0.5, "lines"), 
          legend.key.height = unit(0.5, "lines"),
          legend.key.width = unit(0.7, "lines"),
          legend.text = element_text(size=rel(0.7), colour="grey40"),
          legend.text.align = 0.5,
          legend.title = element_text(size=rel(0.8)),
          legend.title.align = 0,
          legend.position = "right",
          legend.direction = "vertical",
          legend.justification = "left",
          legend.box = "vertical"
    )
}
