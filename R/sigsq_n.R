#' Calculates sigsn_n from prior parameters
#' @param nu_0 prior sample size
#' @param sigsq_0 prior sample variance
#' @param n new sample size
#' @param ssq new sample variance
#' @param kappa_0 prior sample size of means
#' @param y_bar current sample mean
#' @param mu_0 prior sample mean

sigsq_n <- function(nu_0, sigsq_0, n, ssq, kappa_0, y_bar, mu_0)
{
  nu_n = nu_0 + n
  kappa_n = kappa_0 + n

  return((nu_0*sigsq_0 + (n-1)*ssq + kappa_0*n*(y_bar-mu_0)^2/kappa_n)/nu_n)
}
