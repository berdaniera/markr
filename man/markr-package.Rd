\name{markr-package}
\alias{markr-package}
\alias{markr}
\docType{package}
\title{
\packageTitle{markr}
}
\description{
\packageDescription{markr}
}
\details{
The DESCRIPTION file:
\packageDESCRIPTION{markr}
\packageIndices{markr}
    markr provides a visual interface for rapid anomaly detection in time series data.
    It can be used as part of an analysis workflow or stand alone, with examples included.
    The package fits a machine learning algorithm to automatically suggest anomalies.
    The user can keep those flags or mark new sections of the data and add flag names and comments.
    Marked data and flag metadata can be saved for future use.
    The fitted model objects can be saved locally for training future data sets as well.
}
\author{
\packageAuthor{Aaron Berdanier}
Maintainer: \packageMaintainer{Aaron Berdanier, aaron.berdanier@gmail.com}
}
\keyword{ package }
\examples{
    datin = readr::read_csv("./data/example.csv")
    data = tidyr::spread(datin, variable, value)
    mark(data)
}
