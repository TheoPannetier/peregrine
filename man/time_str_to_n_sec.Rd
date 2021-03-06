% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_str_to_n_sec.R
\name{time_str_to_n_sec}
\alias{time_str_to_n_sec}
\title{Convert time from HH:MM:SS to the number of seconds}
\usage{
time_str_to_n_sec(str)
}
\arguments{
\item{str}{the time string as text, for example \code{"12:34:56"}}
}
\description{
This time format is used in a Peregrine log file
}
\examples{
library(testthat)

time_str <- "12:55:44"
expect_n_secs <- (12 * 60 * 60) + (55 * 60) + 44
actual_n_secs <- time_str_to_n_sec(time_str)
expect_equal(actual_n_secs, expect_n_secs)
}
\seealso{
use \link{time_strs_to_n_secs} for multiple strings
}
