% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ltmleMediation_TMLECalcs.R
\name{FitPooledMSM}
\alias{FitPooledMSM}
\title{FitPooledMSM}
\usage{
FitPooledMSM(working.msm, Qstar, combined.summary.measures, msm.weights)
}
\arguments{
\item{working.msm}{Working marginal structural model.}

\item{Qstar}{Final output of the iterated conditional expectations, as created by \code{FixedTimeTMLEMediation}.}

\item{combined.summary.measures}{Betas for coefficient estimation. (TO DO)}

\item{msm.weights}{Weights for the marginal structural model.}
}
\value{
Returns coefficients obtained from the marginal structural model and predicted values for Qstar.
}
\description{
Fit pooled MSM.
}
