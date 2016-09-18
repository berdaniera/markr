# markr/ ![magic](data:image/png;base64,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)
> Marking time series data in R

markr provides a visual interface for rapid anomaly detection in time series data. It can be used as part of an analysis work flow or stand alone.

The package fits a machine learning algorithm (support vector machine) to automatically suggest anomalies. The user can keep those flags or mark new sections of the data and add flag names and comments. Marked data and flag metadata can be saved for future use. The fitted model objects can be saved locally for training future data sets as well.

## Installation

The package can be installed with this R command:
```r
devtools::install_github("berdaniera/markr")
```

## Usage example

markr can easily be integrated into your existing workflow:

```r
datin = readr::read_csv("./data/example.csv")
data = tidyr::spread(datin, variable, value)
mark(data)
```

The interface can also be used without any pre-loaded data. Simply calling:
```r
mark()
```
will open the UI and allow you to upload a new file. Files that you upload through the interface must meet the data formatting requirements: 1) a first column with a date-time format named 'DateTime' and additional columns with variables and 2) one row for each date-time and only one header row.

## Dependencies

This package requires the following additional packages to work correctly: dplyr, e1071, ggplot2, readr, shiny, tidyr.

## FYI

Aaron Berdanier – [@berdaniera](https://twitter.com/berdaniera) – aaron.berdanier@gmail.com

Distributed under the GNU General Public license. See ``LICENSE`` for more information.

[https://github.com/berdaniera](https://github.com/berdaniera/)
