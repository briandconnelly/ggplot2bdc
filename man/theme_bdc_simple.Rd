\name{theme_bdc_simple}
\alias{theme_bdc_simple}
\title{Simple theme with black axes and ticks}
\usage{
theme_bdc_simple(base_size = 12, base_family = "", grid.x = FALSE,
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
`theme_bdc_simple` is a \code{\link{ggplot2}} theme that
produces a "classic" plot with black axes on a white
background. Grid lines can be enabled using the
\code{grid.x} and \code{grid.y} parameters.
}
\examples{
library(ggplot2)

p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + theme_bdc_simple()
p
}
\seealso{
\code{\link{theme}}
}

