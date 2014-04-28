\name{plate_labeller}
\alias{plate_labeller}
\title{Label ggplot2 facets with row letters and column numbers}
\usage{
plate_labeller(variable, value)
}
\arguments{
  \item{variable}{The name of the variable being used for
  this label}

  \item{value}{The value of that variable to be used as a
  facet}
}
\value{
A character containing the label to be used for the facet
}
\description{
\code{plate_labeller} is given as an argument to
\code{\link{facet_grid}} in order to format row and column
numbers as row letters (A-H) and column numbers (1-12) as
is commonly shown on microtiter plates.
}

