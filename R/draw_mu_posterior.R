#' Draws from the posterior of sigma squared
#' @param mu_n See function for mu_n
#' @param sigsq_posterior_draw Relies on previously drawn sigma^2
#' @param kappa_n

draw_mu_posterior <- function(mu_n,sigsq_posterior_draw,kappa_n)
{
  n_sim = length(sigsq_posterior_draw)
  return(rnorm(n_sim,mu_n,sqrt(sigsq_posterior_draw/kappa_n)))
}
