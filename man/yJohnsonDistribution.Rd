\name{yJohnsonDistribution}
\alias{yJohnsonDistribution}

\title{
Standard normal (Z) to Johnson variable (Y) transformation
}

\description{
A normal variable with mean zero and variance one is transformed to a Johnson distribution variate
specified by the Johnson distribution parameters.
This is useful in simulating random variables from a specified Johnson distribution
and in computing the quantiles for a Johnson distribution.
}

\usage{
yJohnsonDistribution(z, ITYPE, GAMMA, DELTA, XLAM, XI)
}

\arguments{
  \item{z}{vector of standard normal variables}
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
Corresponding vector of Johnson distribution variables.
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
\code{\link{zJohnsonDistribution}},
\code{\link{FitJohnsonDistribution}}
}

\examples{
#Example 1.
#fit SL with mean 1, variance 1, skewness 2 then find corresponding variate to Z=2
ans <- FitJohnsonDistribution(1, 1, 2, -1)
GAMMA <- ans["GAMMA"]
DELTA <- ans["DELTA"]
XLAM <- ans["XLAM"]
XI <- ans["XI"]
ITYPE <- 1
z <- 2
yJohnsonDistribution(z, ITYPE, GAMMA, DELTA, XLAM, XI)
#Example 2: find quantiles of SL distribution
#The 0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95, 0.99
#quantiles for an SL distribution are found and a qq plot is produced.
#SL distribution parameters is determined
#    with mean 1, standard deviation 1, skewness 3
ans <- FitJohnsonDistribution(1, 1, 3, -1)
GAMMA <- ans["GAMMA"]
DELTA <- ans["DELTA"]
XLAM <- ans["XLAM"]
XI <- ans["XI"]
ITYPE <- 1
p<-c(0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95, 0.99)
z <- qnorm(p)
y<-yJohnsonDistribution(z, ITYPE, GAMMA, DELTA, XLAM, XI)
plot(z,y,xlab="normal quantiles", ylab="SL quantiles")
#
#Example 3: simulate SL distribution
#with mean 1, sd 1 and skewness 3
#plot estimated pdf
ans <- FitJohnsonDistribution(1, 1, 3, -1)
GAMMA <- ans["GAMMA"]
DELTA <- ans["DELTA"]
XLAM <- ans["XLAM"]
XI <- ans["XI"]
ITYPE <- 1
z <- rnorm(1000)
y <- yJohnsonDistribution(z, ITYPE, GAMMA, DELTA, XLAM, XI)
pdf <- density(y, bw = "sj")
plot(pdf, main="Estimated pdf of SL with mean 1, sd 1, g1 3", xlab="x", ylab="est.pdf(x)" )
}

\keyword{distribution}
