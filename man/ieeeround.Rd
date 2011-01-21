\name{ieeeround}
\alias{fegetround}
\alias{fesetround}
\alias{FE.DOWNWARD}
\alias{FE.UPWARD}
\alias{FE.TOWARDZERO}
\alias{FE.TONEAREST}
\alias{ieeeround-package}
\title{The ieeeround package}
\description{
These functions get and set the rounding mode for the floating point
operations.
}
\usage{
fegetround()
fesetround(rounding.mode=FE.TONEAREST)

FE.DOWNWARD
FE.UPWARD
FE.TOWARDZERO
FE.TONEAREST
}
\arguments{
\item{rounding.mode}{The rounding mode to set. It should be one of \code{FE.DOWNWARD},
\code{FE.UPWARD}, \code{FE.TOWARDZERO} or \code{FE.RONEAREST}.}
}
\details{
The  rounding  mode  determines how the result of floating-point 
operations is treated when the result cannot be exactly represented  in  the
significand.   Various  rounding modes are provided: round to nearest
the  default),  round  up  (towards  positive  infinity),  round  down
(towards negative infinity), and round towards zero.

\code{fesetround(rounding.modes)} sets the rounding mode and returns \code{0} if
it was successfull, \code{1} otherwise.

\code{fegetround()} returns the current rounding mode.
}
\author{
Gianluca Amato \email{amato@sci.unich.it}

The fenv.3 Linux manpage maintainers
}
\examples{
fesetround(FE.UPWARD)
x = 1/5
fesetround(FE.DOWNWARD)
y = 1/5
print(x-y > 0)
fesetround(FE.TONEAREST)
}
\keyword{misc}
\keyword{programming}

