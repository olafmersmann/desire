\name{normMax}
\Rdversion{1.1}
\alias{normMax}
\alias{normMin}
\alias{normTarget}
\title{
Normal Distribution based desirability functions.
}
\description{
Desirability functions based on the normal distribution. These where
developed by XXX in order to improve YYY.  
}
\usage{
normMax(LSL, USL)
normMin(LSL, USL)
normTarget(LSL, T, USL)
}
\arguments{
  \item{LSL}{Lower specification limit}
  \item{T}{Target value}
  \item{USL}{Upper specification limit}
}
\value{
  \code{normMin} and \code{normMax} return functions implementing the specified
  minimzation or maximizing desirability.
  \code{normTarget} returns a function implementing the specified
  target desirability.
}
\references{
  XXX Technical Report ZZZ
}
\author{
  Heike Trautmann \email{trautmann@statistik.tu-dortmund.de},
  Detlef Steuer \email{steuer@hsu-hamburg.de} and
  Olaf Mersmann \email{olafm@statistik.tu-dortmund.de}
}
\seealso{
  \code{\link{harrington1}} for one sided Harrington type desirabilities,
  \code{\link{harrington2}} for two sided Harrington type desirabilities
  and \code{\link{derringerSuich}} for Derringer-Suich type desirabilities.
}
\examples{
## Create desirability functions:
d1 <- normMin(-1, 1)
d2 <- normMax(-1, 1)
d3 <- normTarget(-1, 0, 1)

## Show shape of desirability function:
opar <- par(mfrow=c(3,1))
plot(d1)
plot(d2)
plot(d3)
par(opar)

## Show 
dsplot(log(x), d1, .5, 2)
dsplot(sin(x), d2, -pi, pi)
dsplot(cos(x), d3, 0, 2*pi)
}
\keyword{optimize}
\keyword{multivariate}

