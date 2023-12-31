% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ScatterPlot.R
\name{scatter}
\alias{scatter}
\title{Create a scatter plot}
\usage{
scatter(data, x_axis, y_axis, color = NULL)
}
\arguments{
\item{data}{the data set being utilized}

\item{x_axis}{the column you want to use as the independent variable}

\item{y_axis}{the column you want to use as the dependent variable}

\item{color}{the column you want to use to subset the points by}
}
\value{
a scatter plot
}
\description{
This function will create a scatter plot, with the option to separate the data
points by another variable
}
