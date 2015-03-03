\name{communityclimate}
\alias{communityclimate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Community climate analysis
}
\description{
Performs a community climate analysis. The algorithm first computes the inferred climate at tinf based on sampling from the climate niches of the species in a community at tinf relative to the observed climate at tobs, and determines their volume at tinf (Delta) and mismatch at tinf relative to tobs (Lambda). The algorithm then repeats the process for a large set of null communities, performing a richness-preserving weighted sample with replacement from the regional pool, and creates a null distribution of Delta and Lambda. Finally, community climate deviations (delta and lambda) are computed as robust standard effect sizes based on the observed and null values.

Values of delta < 0 indicate environmental filtering at tinf, while values > 0 indicate environmental permissiveness at tinf and values = 0 indicate no difference between regional and local processes at tinf. Values of lambda < 0 indicate environmental equilibrium at tinf relative to climate at tobs, while values > 0 indicate environmental disequilibrium and values = 0 indicate no difference between regional and local processes for species at tinf relative to tobs.

Actual values of Delta and Lambda indicate the absolute levels of climate space occupancy (Delta) at tinf, or absolute mismatch between community composition at tinf and local climate at tobs (Lambda).

The function assumes that climate axes are on comparable (rescaled) axes, but does not test for this. You are responsible for inputting appropriate data.
}
\usage{
communityclimate(object, climateaxes = NULL, 
  numreplicates = 100, numsamplesperspecies = 100, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
A \code{\link{CommunityClimateInput-class}} object describing the local species composition at tinf, the regional pool (and sampling weights, if provided) at tinf, the climate niches of all species at tinf, and the observed climate at tobs.
}
  \item{climateaxes}{
A named vector with the climate axes to be considered, e.g. a subset of all of the axes. 
}
  \item{numreplicates}{
Number of null models to run. Larger values give more accurate p-values and effect sizes.
}
  \item{numsamplesperspecies}{
Number of random samples from the climate niche of each species for each pass of the algorithm. Larger values give more accurate results.
}
  \item{verbose}{
A logical flag. If true, prints output to track progress of the algorithm.
}
}
\value{
A \code{CommunityClimateStatistics} object.
}
\references{
For more information, see the journal article described in \code{\link{comclim-package}}.
}

\seealso{
\code{\link{inputcommunitydata}}, \code{\link{climatedeviations}}, \code{\link{climatestatistics}}, \code{\link{CommunityClimateStatistics-class}}
}
\examples{
# three dimensional analysis 
# by construction of the example, should yield inferences of
# delta < 0 (environmental filtering) and
# lambda < 0 (environmental equilibrium)

# (uncomment next five lines - not run for CRAN speed)

# community_richness_5 <- generatedemodata()
# result_community <- communityclimate(community_richness_5,
#  climateaxes=c("ClimateAxis1","ClimateAxis2","ClimateAxis3"),
#	numreplicates=25)  
# summary(result_community)


}
