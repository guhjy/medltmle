% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CMI_CheckMedInputs.R
\name{CheckMediationInputs}
\alias{CheckMediationInputs}
\title{CheckMediationInputs}
\usage{
CheckMediationInputs(data, nodes, survivalOutcome, QLform, QZform, qLform,
  qzform, gform, gbounds, Yrange, deterministic.g.function, SL.library, regimes,
  regimes.prime, working.msm, summary.measures, final.Ynodes, stratify,
  msm.weights, deterministic.Q.function, observation.weights, gcomp,
  IC.variance.only)
}
\arguments{
\item{data}{Dataframe containing the data in a wide format.}

\item{nodes}{list of nodes.}

\item{survivalOutcome}{logical variable specifying if the outcome is survival.}

\item{QLform}{Q forms for L covariates.}

\item{QZform}{Q forms for Z covariates.}

\item{qLform}{g form for L covariates.}

\item{qzform}{g form for Z covariates.}

\item{gform}{g form for intervention (if there is a censoring variable, include C as well).}

\item{gbounds}{Bounds for the propensity score.}

\item{Yrange}{Specify range for the outcome.}

\item{deterministic.g.function}{Logical specifying if g is a deterministic function.}

\item{SL.library}{SuperLearner library for estimation.}

\item{regimes}{Regimes for abar as output by the RegimesFromAbar function.}

\item{regimes.prime}{Regimes for abar.prime as output by the RegimesFromAbar function.}

\item{working.msm}{Working MSM as output by the GetMediationMSMInputsForLtmle function.}

\item{summary.measures}{Summary measures as output by the GetMediationMSMInputsForLtmle function.}

\item{final.Ynodes}{Final Y node(s).}

\item{stratify}{Logical enabling stratified outcome.}

\item{msm.weights}{MSM weights.}

\item{deterministic.Q.function}{Logical specifying if Q is a deterministic function.}

\item{observation.weights}{Provide weight for observations}

\item{gcomp}{gcomp formula.}

\item{IC.variance.only}{Only estimate variance through the influence curve}
}
\value{
Checks if the input is valid for further analysis.
}
\description{
Error checking for inputs.
}
