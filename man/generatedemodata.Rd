\name{generatedemodata}
\alias{generatedemodata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simulation data for demonstration analyses.
}
\description{
Creates a \code{\link{CommunityClimateInput-class}} object for usage in demos. Creates a regional pool of species with normally distributed climate niches within some region of climate space. Then chooses a subset of these species with climate niches closer to the origin to represent the local community, and defines an observed climate at another location in climate space. 
}
\usage{
generatedemodata(num_regionalpool = 50, num_community = 5, 
  num_occurrences = 40, num_climateaxes = 3, observed = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{num_regionalpool}{
Number of species in the regional pool
}
  \item{num_community}{
Number of species in the local community
}
  \item{num_occurrences}{
Number of occurrences to simulate as the basis for each species' climate niche
}
  \item{num_climateaxes}{
Number of climate axes
}
  \item{observed}{
The location of the observed climate. Must be a scalar; the function will copy the value to all axes.
}
}
\value{
A \code{\link{CommunityClimateInput-class}} object.
}
\examples{
# a five-dimensional climate space with ten species in the local community
community_demo <- generatedemodata(num_community=10, num_climateaxes=5)



}