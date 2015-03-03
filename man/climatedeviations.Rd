\name{climatedeviations}
\alias{climatedeviations}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Reports community climate deviations.
}
\description{
Helper function to report community climate deviations. Deviations are calculated as standard effect sizes using a robust estimator as (x - quantile(null, 0.5)) / (quantile(null,0.75) - quantile(null,0.25)). Two-tailed p-values are also calculated by recentering the observed and null values to the null distribution mean, then determining the probability that the recentered observed value is either less than the null, or greater than the null.
}
\usage{
climatedeviations(object)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
A CommunityClimateStatistics object.
}
}

\value{
A named list of deviations, with each element containing a standard effect size (ses) and two-tailed p-value (pvalue) for each deviation
\item{deviation_volumeMagnitude }{A two element vector for climate volume (delta)}
\item{deviation_mismatchMagnitude }{A two element vector for climate mismatch (lambda)}
\item{deviation_mismatchDirections }{A two column data frame for climate mismatch along each climate axis (lambda_i), with row names corresponding to each axis}
}