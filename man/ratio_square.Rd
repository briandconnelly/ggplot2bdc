\name{ratio_square}
\alias{ratio_square}
\title{Calculate the aspect ratio of data that would create a square}
\usage{
ratio_square(xvals, yvals)
}
\arguments{
  \item{xvals}{Vector containing the values plotted along
  the X axis}

  \item{yvals}{Vector containing the values plotted along
  the Y axis}
}
\value{
A numeric value containing the aspect ratio that would
produce a plot with square proportions
}
\description{
\code{ratio_square} returns the aspect ratio (\code{y/x})
that would produce a plot where the space that covers one
unit along the x axis would correspond to 1 along the y
axis.
}
\note{
This function may be useful to establish a starting aspect
ratio to use when
"\href{http://eagereyes.org/basics/banking-45-degrees}{banking
to 45}".
}
\examples{
ratio <- ratio_square(xvals=mtcars$hp, yvals=mtcars$mpg)
}

