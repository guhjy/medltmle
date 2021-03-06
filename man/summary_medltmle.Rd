% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medltmle_HelperFun.R
\name{summary_medltmle}
\alias{summary_medltmle}
\title{summary_medltmle}
\usage{
summary_medltmle(nie1, nie2, nde1, nde2)
}
\arguments{
\item{nie1}{First part of the treatment/mediator specific mean returned by \code{medltmle} for the Natural Indirect Effect. It should correspond to the output generated by \code{medltmle} with abar=1, abar.prime=1 for NIE.}

\item{nie2}{Second part of the treatment/mediator specific mean returned by \code{medltmle} for the Natural Indirect Effect.  It should correspond to the output generated by \code{medltmle} with abar=1, abar.prime=0 for NIE.}

\item{nde1}{First part of the treatment/mediator specific mean returned by \code{medltmle} for the Natural Direct Effect.  It should correspond to the output generated by \code{medltmle} with abar=1, abar=0 for NDE.}

\item{nde2}{Second part of the treatment/mediator specific mean returned by \code{medltmle} for the Natural Direct Effect.  It should correspond to the output generated by \code{medltmle} with abar=0, abar.prime=0 for NDE.}
}
\value{
Returns summary statistics corresponding to Natural Indirect Effect and Natural Direct Effect parameters.
}
\description{
Function to summarize Natural Indirect Effect and Natural Direct Effect parameters estimated by \code{medltmle}.
}
