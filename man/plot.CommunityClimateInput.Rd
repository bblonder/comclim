\name{plot.CommunityClimateInput}
\alias{plot.CommunityClimateInput}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pairs plot of species and regional pool in climate space
}
\description{
Produces a pairs plot representing a multidimensional climate space. The species in the community are drawn in a contrasting fashion to the species in the regional pool.
}
\usage{
\method{plot}{CommunityClimateInput}(x, climateaxes = NULL, axisnames = NULL, 
  cex.community = 0.5, cex.pool = 0.25, 
  pch.community = 16, pch.pool = 16, 
  colors = "rainbow", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A \code{CommunityClimateInput} object to be plotted.
}
  \item{climateaxes}{
A vector of climate axes to be plotted, usually a subset of the axes in \code{object}. If empty, defaults to all axes.
}
  \item{axisnames}{
Label text for the climate axes.
}
  \item{cex.community}{
Expansion factor for the local community's species.
}
  \item{cex.pool}{
Expansion factor for the regional pool's species.
}
  \item{pch.community}{
Plotting symbol for the local community's species.
}
  \item{pch.pool}{
Plotting symbol for the regional pool's species.
}
  \item{colors}{
The name of a function used to give a color each species.
}
\item{...}{Other arguments to be passed to plot commands}
}
\value{
None. Used for the side-effect of producing a plot.
}
\examples{
community_richness_5 <- generatedemodata()

plot(community_richness_5)
}