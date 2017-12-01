#' Plots univariate density estimate
#' @param x_sim Draws from posterior density
#' @param plot_title Gives plot a title

plot_posterior_density_estimate <- function(x_sim,plot_title = "Posterior density")
{
  ggplot() +
    geom_density(aes(x = x_sim)) +
    ggtitle(plot_title)
}

