% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NonNumeric.R
\name{non_numeric}
\alias{non_numeric}
\title{Check if column contents are numeric}
\usage{
non_numeric(column)
}
\arguments{
\item{column}{the column you wish to clean. Must be selected out of data set and saved to a variable.}
}
\value{
if the column is numeric, the column will be returned
}
\description{
Clean data by checking to see if any non-numeric data is in a column where it shouldn't be.
}
