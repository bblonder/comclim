\name{CommunityClimateStatistics-class}
\Rdversion{1.1}
\docType{class}
\alias{CommunityClimateStatistics-class}

\title{Class \code{"CommunityClimateStatistics"}}
\description{
A class used to compactly store output of community climate analysis. Can be summarized and plotted.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("CommunityClimateStatistics", ...)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{obsStats}:}{Object of class \code{"list"} A list with elements reflecting community climate statistics. See \code{\link{climatestatistics}} for a helper function and more information. }
    \item{\code{nullStats}:}{Object of class \code{"list"} A list of lists, corresponding to output similar to \code{obsStats} for each null community.  }
    \item{\code{deviations}:}{Object of class \code{"list"} A lis with elements reflecting community climate deviations. See \code{\link{climatedeviations}} for a helper function and more information. }
  }
}
\keyword{classes}
