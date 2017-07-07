#' medltmle
#'
#' Longitudinal Mediation Analysis with Time-varying Mediators.
#'
#' @param data Dataframe containing the data in a wide format.
#' @param Anodes names of columns containing A covariates.
#' @param Znodes names of columns containing Z covariates.
#' @param Cnodes names of columns containing C covariates.
#' @param Lnodes names of columns containing L covariates.
#' @param Ynodes names of columns containing Y covariates.
#' @param survivalOutcome logical variable specifying if the outcome is survival.
#' @param QLform Q forms for L covariates.
#' @param QZform Q forms for Z covariates.
#' @param gform g form for intervention (if there is a censoring variable, include C as well).
#' @param qzform g form for Z covariates.
#' @param qLform g form for L covariates.
#' @param abar Intervention. Dimensions should correspond to the dimension of time points available.
#' @param abar.prime Control for the exposure. Dimensions should correspond to the dimension of time points available.
#' @param gbounds Bounds for the propensity score.
#' @param deterministic.g.function Logical specifying if g is a deterministic function.
#' @param stratify Logical enabling stratified outcome.
#' @param SL.library SuperLearner library for estimation.
#' @param estimate.time Measure time to fun function.
#' @param deterministic.Q.function Logical specifying if Q is a deterministic function.
#' @param gcomp gcomp formula.
#' @param iptw.only Use IPTW estimator only
#' @param IC.variance.only Only estimate variance through the influence curve
#' @param observation.weights Provide weight for observations
#' @param rule Specify rule for the intervention.
#' @param Yrange Specify range for the outcome.
#'
#' @return Returns estimate of $E[Y_{\tau}(a, \overline{\Gamma}^{a^'})]$
#'
#' @export medltmle

medltmle <- function(data, Anodes, Znodes, Cnodes=NULL, Lnodes=NULL, Ynodes,
                           survivalOutcome=NULL,
                           QLform=NULL, QZform=NULL,gform=NULL, qzform=NULL, qLform=NULL,
                           abar, abar.prime,  rule=NULL, gbounds=c(0.01, 1), Yrange=NULL,
                           deterministic.g.function=NULL, deterministic.Q.function=NULL,
                           stratify=FALSE, SL.library=NULL,
                           estimate.time=TRUE, gcomp=FALSE,
                           iptw.only=FALSE, IC.variance.only=FALSE, observation.weights=NULL) {

  #Implement rule and deterministic g function option. TO DO.
  if(!is.null(rule))stop('rule option not implemented yet')
  if(!is.null(deterministic.g.function)) stop('deterministic.g.function option not implemented yet')

  #Note that MSM is not implemented, yet. TO DO.
  msm.inputs <- CreateMedMSMInputs(data, abar=abar, abar.prime = abar.prime,
                                              rule = rule, gform=gform)

  inputs <- CreateMedInputs(data=data, Anodes=Anodes, Cnodes=Cnodes, Lnodes=Lnodes, Ynodes=Ynodes, Znodes=Znodes,
                                  QLform=QLform, QZform=QZform, gform=msm.inputs$gform, qLform=qLform, qzform=qzform,
                                  Yrange=Yrange, gbounds=gbounds, SL.library=SL.library, stratify=stratify,
                                  regimes=msm.inputs$regimes,regimes.prime=msm.inputs$regimes.prime,
                                  working.msm=msm.inputs$working.msm, summary.measures=msm.inputs$summary.measures,
                                  final.Ynodes=msm.inputs$final.Ynodes, msm.weights=msm.inputs$msm.weights,
                                  estimate.time=estimate.time, gcomp=gcomp, iptw.only=iptw.only,
                                  deterministic.Q.function=deterministic.Q.function, deterministic.g.function=deterministic.g.function,
                                  IC.variance.only=IC.variance.only,
                                  observation.weights=observation.weights, survivalOutcome=survivalOutcome)

  print(tracemem(inputs)) #fixme
  result <- ltmleMediation(inputs)
  result$call <- match.call()
  return(result)
}


