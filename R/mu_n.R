#' Computes mu_n from prior parameters
#' @param kappa_0 number of prior observations
#' @param mu_0 mean of prior observations
#' @param n number of new observations
#' @param y_bar mean of new observations

mu_n <- function(kappa_0, mu_0, n, y_bar)
{
  return(mu_n <- (kappa_0*mu_0 + n*y_bar)/(kappa_0+n))
}
