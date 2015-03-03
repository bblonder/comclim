\name{CommunityClimateInput-class}
\Rdversion{1.1}
\docType{class}
\alias{CommunityClimateInput-class}

\title{Class \code{"CommunityClimateInput"}}
\description{
A class used to compactly store input for community climate analysis. Can be plotted.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("CommunityClimateInput", ...)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{species_list_tinf}:}{Object of class \code{"character"}. The names of species in the local community at tinf. }
    \item{\code{regional_pool_tinf}:}{Object of class \code{"character"}. The names of species in the the regional pool for the local community at tinf. }
    \item{\code{regional_pool_weights_tinf}:}{Object of class \code{"numeric"} A numeric vector with same length as \code{regional_pool_tinf}, corresponding to sampling weights at tinf. Does not need to sum to one; will be normalized. If left empty, will be auto-filled with all 1s (i.e. uniform sampling). }
    \item{\code{climate_niches_tinf}:}{Object of class \code{"data.frame"}. A dataframe with climate niche information for all species in the local community and regional pool at tinf. Should have a \code{taxon} column, and then any number of other columns corresponding to climate axes. Each row represents an observation of the species with a given taxon name. Usually you will fill this dataframe by mapping geographic occurrences of species into climate space. }
    \item{\code{observed_climate_tobs}:}{Object of class \code{"numeric"} A named numeric vector with names corresponding to the same climate axes as in \code{climate_niches_tinf}. Represents the observed climate at tobs.  }
  }
}

\seealso{
\code{\link{plot.CommunityClimateInput}}
}
\examples{
community_richness_5 <- generatedemodata()

summary(community_richness_5)
}
\keyword{classes}
