\name{JohnsonDistribution-package}
\alias{JohnsonDistribution-package}
\docType{package}
\title{
Johnson Curve Distribution
}
\description{
Fit and simulate from the family of Johnson Curve Distributions
}

\details{

\tabular{ll}{
Package: \tab JohnsonDistribution\cr
Type: \tab Package\cr
Version: \tab 0.24\cr
Date: \tab 2012-04-16\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
}

}

\author{
A. I. McLeod and Leanna King

Maintainer: aimcleod@uwo.ca
}

\references{ 
D. Hill, R. Hill, and R. L. Holder, 
Algorithm AS 99. Fitting Johnson curves by moments,
Appl. Statist.,25, No. 2, 180-189 (1976).

I. D. Hill, 
Algorithm AS 100. 
Normal-Johnson and Johnson-normal transformations,
Appl. Statist.,25, No. 2, 190-192 (1976).
}

\keyword{distribution}

\keyword{package}

\seealso{
\code{\link{cor}}
}

\examples{
FitJohnsonDistribution(1, 1, 2, -1)
}
