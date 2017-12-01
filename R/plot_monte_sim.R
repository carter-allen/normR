#' Plots the monte carlo draws
#' @param sig_sim Sigma^2 draws
#' @param mu_sim mu draws

plot_monte_sim <- function(sig_sim,mu_sim)
{
  monte_df = as_tibble(cbind(sig_sim,mu_sim))
  colnames(monte_df) = c("sigsq_posterior_draw","mu_posterior_draw")
  ggplot(data = monte_df, aes(x = mu_posterior_draw,y=sigsq_posterior_draw)) + geom_point(alpha=0.15)
}
