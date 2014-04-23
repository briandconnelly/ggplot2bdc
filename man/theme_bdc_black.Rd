\name{theme_bdc_black}
\alias{theme_bdc_black}
\title{Clean theme with black box and axis ticks}
\usage{
theme_bdc_black(base_size = 12, base_family = "", grid.x = FALSE,
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
`theme_bdc_black` is a \code{\link{ggplot2}} theme that
produces a plot in a simple black panel on a white
background. Grid lines can be enabled using the
\code{grid.x} and \code{grid.y} parameters.
}
\examples{
library(ggplot2)

p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + theme_bdc_black()
p
}
\seealso{
\code{\link{theme}}
}

