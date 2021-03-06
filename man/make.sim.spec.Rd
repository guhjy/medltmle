% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make.sim.spec.R
\name{make.sim.spec}
\alias{make.sim.spec}
\title{make.sim.spec}
\usage{
make.sim.spec(timepoint, YisL = TRUE)
}
\arguments{
\item{timepoint}{Specifies the final time point.}

\item{YisL}{Logical indicating whether final outcome is a function of the time-varying covariate.}
}
\value{
Returns a list with models for each time point and covariate.
}
\description{
This function creates functions for iterative expectations.
}
