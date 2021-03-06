% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GenerateData_SingA_TimeOrdL.R
\name{GenerateData_SingA_TimeOrdL}
\alias{GenerateData_SingA_TimeOrdL}
\title{GenerateData_SingA_TimeOrdL}
\usage{
GenerateData_SingA_TimeOrdL(n, end.time, abar = NULL, abar.prime = NULL)
}
\arguments{
\item{n}{Sample size}

\item{end.time}{Last time point}

\item{abar}{Set intervention}

\item{abar.prime}{Control intervention}
}
\value{
Returns a dataframe with simulated covariates as described in the description.
}
\description{
Simulate another longitudinal data set, with uncertain time ordering of baseline covariates and single intervention.
Note that the data is of the following format: O={L1,L2,L3,L4,L5,L6,C1,D1,C1.2,LA1,Z1,LZ1,C2,D2,LA2,Z2,LZ2 ... Y }
L1,L2,L3,L4,L5 are baseline covariates accroding to time ordering, L6 is some randomized covariate (possibly intervention)
LA and LZ time-varying covariates, C and D are censoring and death indicators, Z is a mediator and Y is the final outcome based on LZ.
}
