\name{zJohnsonDistribution}
\alias{zJohnsonDistribution}

\title{
Johnson variable (Y) to standard normal (Z) transformation
}

\description{
A Johnson distribution variable with specified parameters is transformed
to a unit normal variable and can be used to compute percentiles.
}

\usage{
zJohnsonDistribution(s, ITYPE, GAMMA, DELTA, XLAM, XI)
}

\arguments{
  \item{s}{value of Johnson distribution variable. May be  vector}
  \item{ITYPE}{is 1, SL; 2 for SU, 3 for SB and 4 for Normal}
  \item{GAMMA}{parameter in Johnson distribution}
  \item{DELTA}{parameter in Johnson distribution}
  \item{XLAM}{parameter in Johnson distribution}
  \item{XI}{parameter in Johnson distribution}
}

\details{
Our function provides an interface to the Fortran algorithm AS 100 (Hill, 1976).
}

\value{
Corresponding vector of standard normal variables.
}

\references{
I. D. Hill, 
Algorithm AS 100. 
Normal-Johnson and Johnson-normal transformations,
Appl. Statist.,25, No. 2, 190-192 (1976).
}

\author{
A. I. McLeod and Leanna King
}

\note{
The input parameters ITYPE, GAMMA, DELTA, XLAM, XI must all be scalars.
An error is given if they are not.
}

\seealso{
\code{\link{yJohnsonDistribution}},
\code{\link{FitJohnsonDistribution}}
}

\examples{
#
#Example: find the percentage points for an SL distribution
#    with mean 1, standard deviation 1, skewness 3
#    corresponding to observed values 1, 2, 3, 4, 5
ans <- FitJohnsonDistribution(1, 1, 3, -1)
GAMMA <- ans["GAMMA"]
DELTA <- ans["DELTA"]
XLAM <- ans["XLAM"]
XI <- ans["XI"]
ITYPE <- 1
y <- 1:5
Z <- zJohnsonDistribution(y, ITYPE, GAMMA, DELTA, XLAM, XI)
pnorm(Z)
}

\keyword{distribution}


