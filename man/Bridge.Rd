% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bridge.R
\name{Bridge}
\alias{Bridge}
\alias{dbridge}
\alias{bridge}
\alias{pbridge}
\alias{qbridge}
\alias{rbridge}
\alias{bridgedist}
\title{The Bridge Distribution}
\source{
\code{[dpq]bridge} are calculated directly from the definitions.

\code{rbridge} uses inversion.
}
\usage{
dbridge(x, phi = 1/2, log = FALSE)

pbridge(q, phi = 1/2, lower.tail = TRUE, log.p = FALSE)

qbridge(p, phi = 1/2, lower.tail = TRUE, log.p = FALSE)

rbridge(n, phi = 1/2)
}
\arguments{
\item{x, q}{vector of quantiles.}

\item{phi}{phi parameter. The phi must be between 0 and 1. A phi of 1/sqrt(1+3/pi^2) gives unit variance.}

\item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}

\item{lower.tail}{logical; if TRUE (default), probabilities are \eqn{P[X
\le x]}, otherwise, \eqn{P[X > x]}.}

\item{p}{vector of probabilities.}

\item{n}{number of observations. If \code{length(n) > 1}, the length is
taken to be the number required.}
}
\value{
\code{dbridge} gives the density, \code{pbridge} gives the
distribution function, \code{qbridge} gives the quantile function, and
\code{rbridge} generates random deviates.

The length of the result is determined by \code{n} for \code{rbridge}, and
is the maximum of the lengths of the numerical arguments for the other
functions.

The numerical arguments other than \code{n} are recycled to the length of
the result.  Only the first elements of the logical arguments are used.
}
\description{
Density, distribution function, quantile function and random generation for
the bridge distribution with parameter \code{phi}. See Wang and Louis (2003).
}
\details{
If \code{phi} is omitted, the default
value \code{1/2} is assumed.

The Bridge distribution parameterized by
\code{phi} has distribution function
\deqn{ }{F(q) = 1 - 1/(pi*phi) * (pi/2 - atan( (exp(phi*q) + cos(phi*pi)) / sin(phi*pi) ))}
and density
\deqn{ }{f(x) = 1/(2*pi) * sin(phi*pi) / (cosh(phi*x) + cos(phi*pi)).}

The mean is \eqn{\mu}{0} and the variance is
\eqn{\pi^2 (\phi^{-2} - 1) / 3 }{pi^2 * (phi^{-2} - 1) / 3 }.
}
\note{
Consult the vignette for some figures comparing the normal, logistic, and bridge
distributions.
}
\examples{
  ## Confirm unit variance for phi = 1/sqrt(1+3/pi^2)
  var(rbridge(1e5, phi = 1/sqrt(1+3/pi^2)))  # approximately 1

}
\references{
Wang, Z. and Louis, T.A. (2003) Matching conditional and marginal shapes in binary random intercept models using
a bridge distribution function. \emph{Biometrika}, 90(4), 765-775. <DOI:10.1093/biomet/90.4.765>

See also:

Swihart, B.J., Caffo, B.S., and Crainiceanu, C.M. (2013). A Unifying Framework for Marginalized Random-Intercept Models of Correlated Binary Outcomes. \emph{International Statistical Review}, 82 (2), 275-295 1-22.  <DOI: 10.1111/insr.12035>

Griswold, M.E., Swihart, B.J., Caffo, B.S and Zeger, S.L. (2013). Practical marginalized multilevel models. Stat, 2(1), 129-142. <DOI: 10.1002/sta4.22>

Heagerty, P.J. (1999). Marginally specified logistic-normal models for longitudinal binary data. Biometrics, 55(3), 688-698.  <DOI: 10.1111/j.0006-341X.1999.00688.x>

Heagerty, P.J. and Zeger, S.L. (2000). Marginalized multilevel models and likelihood inference (with comments and a rejoinder by the authors). Stat. Sci., 15(1), 1-26.  <DOI: 10.1214/ss/1009212671>
}
\seealso{
\link{Distributions} for other standard distributions.
}
\keyword{distribution}
