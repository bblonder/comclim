\name{climatestatistics}
\alias{climatestatistics}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Reports observed climate statistics
}
\description{
Helper function to report community climate statistics for the real community, i.e. not corrected for any null model.
}
\usage{
climatestatistics(object)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
A CommunityClimateStatistics object
}
}
\value{
A named list:
\item{meanNiches }{A dataframe with columns corresponding to climate axes, and one row for each species in the community. Each observation is the mean climate niche of that species at tinf.}
\item{inferredClimate }{A vector with names corresponding to climate axes, representing the inferred climate determined by overlapping niches of all species in the community at tinf.}
\item{observedClimate }{A vector with names corresponding to climate axes, representing the observed climate at tobs.}
\item{volumeMagnitude}{A number representing the climate volume at tinf (Delta)}
\item{mismatchMagnitude}{A number representing the magnitude of the climate mismatch at tinf relative to the climate at tobs (Lambda)}
\item{mismatchDirections}{A vector with names corresponding to climate axes, representing the climate mismatch projected along each axis at tinf relative to the climate at tobs.}
%% ...
}