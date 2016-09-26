# markr <img src="/magic.png" height="30">
> Marking time series data in R

markr provides a visual interface for rapid anomaly detection in time series data. It can be used as part of an analysis work flow or stand alone.

The package fits a machine learning algorithm (support vector machine) to automatically suggest anomalies. The user can keep those flags or mark new sections of the data and add flag names and comments. Marked data and flag metadata can be saved for future use. The fitted model objects can be saved locally for training future data sets as well.


## Installation
> Add a magic marker to your work flow

The package can be installed with this R command:
```r
devtools::install_github("berdaniera/markr")
```

## Usage example

markr can easily be integrated into your existing analysis:

```r
library(markr)
# load example data
data(markeg)
# create data format for marking
data = tidyr::spread(markeg, variable, value)
# mark it up
mark(data)
```

The interface can also be used without any pre-loaded data. You can open the UI and upload a new file by calling calling:
```r
mark()
```

## Input data

The data that you enter must meet the formatting requirements:

* a first column with a date-time format named 'DateTime'
* additional columns with variables
* one row for each date-time
* only one header row

## Dependencies

This package requires the following additional packages to work correctly: dplyr, e1071, ggplot2, readr, shiny, tidyr.

## FYI

Aaron Berdanier – [@berdaniera](https://twitter.com/berdaniera) – aaron.berdanier@gmail.com

Distributed under the GNU General Public license. See ``LICENSE`` for more information.

[https://github.com/berdaniera](https://github.com/berdaniera/)
