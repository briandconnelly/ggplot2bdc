\name{theme_bdc_grey}
\alias{theme_bdc_gray}
\alias{theme_bdc_grey}
\title{Clean theme with grey box and axis ticks}
\usage{
theme_bdc_grey(base_size = 12, base_family = "", grid.x = FALSE,
  grid.y = FALSE)
}
\arguments{
  \item{base_size}{The base size for all text (default:
  12)}

  \item{base_family}{The base font family for all text}

  \item{grid.x}{Show grid lines along the X axis (default:
  FALSE)}

  \item{grid.y}{Show grid lines along the Y axis (default:
  FALSE)}
}
\value{
A list of ggplot theme parameters
}
\description{
\code{theme_bdc_grey} is a \code{\link{ggplot2}} theme that
produces a plot in a simple grey panel on a white
background. Grid lines can be enabled using the
\code{grid.x} and \code{grid.y} parameters.
}
\examples{
library(ggplot2)

p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + theme_bdc_grey()
p
}
\seealso{
\code{\link{theme}}
}

