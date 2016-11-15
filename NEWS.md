# ggplot2bdc 0.3.0

* Added support for the changes in ggplot2 2.2.0
    * Now that `theme` uses named arguments, `gg_supports_theme_attribute` now examines `theme`'s formal arguments instead of looking in `theme_grey`
    * Moved `panel.margin` and `legend.margin` to `panel.spacing` and `legend.spacing`
    * Explicitly setting a few legend properties in `theme_bdc_grey`
    * Updated `gg_rescale` to work with changed format of plot objects
* ggplot2 2.2.0 is now required for ease of maintenance
    * Removed checks for subtitle and caption support

# ggplot2bdc 0.2.3

* Fixed support for subtitles and captions in theme_bdc_microtiter (thanks @WadeDavis)

# ggplot2bdc 0.2.2

* Support for subtitles and captions only when development version is used

# ggplot2bdc 0.2.1

* Updated `theme_bdc_microtiter`
    * Now compatible with cowplot::switch_axis_position

# ggplot2bdc 0.2.0

* Updated `theme_bdc_grey`
    * Works properly with ggplot2
    * Added support for subtitle and caption
    * Merged in facet strip formatting from `theme_bdc_simplefacets`
* Updated `theme_bdc_microtiter`
    * Works properly with ggplot2
    * Added support for subtitle and caption
* Updated `theme_bdc_lattice_population`
    * Works properly with ggplot2
    * Added support for subtitle and caption
    * Added gganimate example
    * Now based on `ggplot2::theme_void`
* Updated `theme_bdc_paneled`
    * Works properly with ggplot2
    * Added support for subtitle and caption
* Added `rockpaperscissors` data set, a spatial simulation of rock, paper, scissors
* Added `gg_remove_ticks` functions
    * Removed `remove_ticks`
* Added `gg_remove_titles` functions
    * Removed `remove_titles`
* Simplified `span` implementation
    * Added unit tests for span
* Renamed `rescale_plot`, `rescale_golden`, and `rescale_square` as `gg_rescale`, `gg_rescale_golden`, and `gg_rescale_square`, respectively
    * All now share the same man page
* Removed `theme_bdc_black`
* Removed `theme_bdc_simple`
* Removed `theme_bdc_simplefacets`
* Removed `coord_golden`, `coord_square`, `ratio_golden`, and `ratio_square`

# ggplot2bdc 0.1.7

* Added theme_bdc_lattice_population

# ggplot2bdc 0.1.6

* rescale_plot now uses the axis ranges instead of the data ranges when calculating the appropriate ratio


# ggplot2bdc 0.1.5

* Added rescale_plot function, which re-scales a plot to a given ratio
* rescale_golden and rescale_square now call rescale_plot
* Created NEWS file

