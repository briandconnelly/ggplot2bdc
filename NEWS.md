# ggplot2bdc 0.2.0

* Updated `theme_bdc_grey`
    * Works properly with ggplot2
    * Added support for subtitle and caption
* Updated `theme_bdc_microtiter`
    * Works properly with ggplot2
    * Added support for subtitle and caption
* Updated `theme_bdc_lattice_population`
    * Works properly with ggplot2
    * Added support for subtitle and caption
    * Now based on `ggplot2::theme_void`
* Updated `theme_bdc_simplefacets`
    * Works properly with ggplot2
    * Added support for subtitle and caption
* Updated `theme_bdc_paneled`
    * Works properly with ggplot2
    * Added support for subtitle and caption
* Added `rockpaperscissors` data set, a spatial simulation of rock, paper, scissors
* Removed `theme_bdc_black`
* Removed `theme_bdc_simple`
* Simplified `span` implementation
    * Added unit tests for span
* TODO: Updated data sets used in README
* TODO: use ... for all arguments that get passed to _grey. Could also use inheritparams in the doc.
* TODO: add data sets for microtiter?
* TODO: gganimage example for rockpaperscissors

# ggplot2bdc 0.1.7

* Added theme_bdc_lattice_population

# ggplot2bdc 0.1.6

* rescale_plot now uses the axis ranges instead of the data ranges when calculating the appropriate ratio


# ggplot2bdc 0.1.5

* Added rescale_plot function, which re-scales a plot to a given ratio
* rescale_golden and rescale_square now call rescale_plot
* Created NEWS file

