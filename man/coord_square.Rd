\name{coord_square}
\alias{coord_square}
\title{Set a square aspect ratio}
\usage{
coord_square(xvals, yvals)
}
\arguments{
  \item{xvalues}{Vector containing the values plotted along
  the X axis}

  \item{yvalues}{Vector containing the values plotted along
  the Y axis}
}
\description{
\code{coord_square} sets the aspect ratio of the axes in
the plot to 1:1 (a square)
}
\examples{
p <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() +
         coord_square(xvals=mtcars$hp, yvals=mtcars$mpg)
p
}

