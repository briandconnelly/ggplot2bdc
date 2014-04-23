\name{coord_golden}
\alias{coord_golden}
\title{Set aspect ratio according to the golden ratio}
\usage{
coord_golden(xvals, yvals)
}
\arguments{
  \item{xvalues}{Vector containing the values plotted along
  the X axis}

  \item{yvalues}{Vector containing the values plotted along
  the Y axis}
}
\description{
\code{coord_golden} sets the aspect ratio of the axes in
the plot according to the golden ratio.
}
\examples{
p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() +
         coord_golden(xvals=mtcars$hp, yvals=mtcars$mpg)
p
}

