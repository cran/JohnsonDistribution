\name{FitJohnsonDistribution}
\alias{FitJohnsonDistribution}
\title{
Fit Johnson Curve by Moments
}
\description{
This implements the Fortran algorithm AS 99 by Hill et al. 
}
\usage{
FitJohnsonDistribution(XBAR, SD, RB1, BB2)
}

\arguments{
  \item{XBAR}{
mean
}
  \item{SD}{
standard deviation
}
  \item{RB1}{
coefficient of skewness
}
  \item{BB2}{
coefficient of kurtosis or a negative value to indicate the lognormal family
}
}

\value{
Vector of length 6 with named elements: "ITYPE", "GAMMA", "DELTA", "XLAM", "XI", "IFAULT".
ITYPE is 1, SL; 2 for SU, 3 for SB, 4 for Normal.
GAMMA, DELTA, XLAM, XI are the parameters for the Johnson distribution,
where for the SL family, XI=-1.
IFAULT is an error indicator, 0 means no error, 1 if the input standard deviation is negative,
2 if the kurotis, BB2, is less than skewness coefficient plus 1 and 3 if SB-fitting failed
to converge and an SL or ST was fit instead.
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

\author{
A. I. McLeod 
}

\seealso{
\code{\link{yJohnsonDistribution}},
\code{\link{zJohnsonDistribution}}
}

\examples{
#fit SL with mean 1, variance 1 and skewness 2.
FitJohnsonDistribution(1, 1, 2, -1)
}

\keyword{distribution}
