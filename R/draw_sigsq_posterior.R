#' Draws from the posterior of sigma squared
#' @param n_sim Number of draws
#' @param nu_n nu_n = nu_0 + n
#' @param sigsq_n See function for sigsq_n

draw_sigsq_posterior <- function(n_sim = 10000,nu_n,sigsq_n)
{
  return(1/rgamma(n_sim,nu_n/2,sigsq_n*nu_n/2))
}
