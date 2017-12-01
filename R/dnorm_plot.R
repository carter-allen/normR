#' Plots probability density function of a normal random variable
#' @param mean Mean
#' @param var Variance
#' @param by Controls granularity
#' @param plot_title Controls the title of the plot
#' @examples
#' dnorm_plot(0,1)

dnorm_plot <- function(mean,var,by = 0.0025, plot_title = "Normal Density Function")
{
  x_min = floor(qnorm(0.005,mean,sqrt(var)))
  x_max = ceiling(qnorm(0.995,mean,sqrt(var)))

  xs = seq(x_min,x_max,by = by)
  p.x = dnorm(xs,mean,sqrt(var))
  ps.df = as_tibble(cbind(xs,p.x))

  ggplot(data = ps.df, aes(x = xs,y = p.x)) +
    geom_point() +
    ggtitle(plot_title) +
    labs(subtitle = paste("With parameters:","mean =",mean,"and","var =",var))
}
