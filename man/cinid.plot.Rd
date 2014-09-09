\name{cinid.plot}
\alias{cinid.plot}
\title{Print the observed distribution and the estimated one}

\description{
This function computes a histogram of the observed headcapsule widths and the Gaussian curves of the probability densities of the four larval instars, 
defined formerly by the \code{\link{cinid.table}} function (you must use \code{cinid.table} before to use \code{cinid.plot}).
}

\usage{
cinid.plot(cinid.out, breaks = 50, xlab = "Headcapsules width", ylab1 = "Density", 
ylab2 = "Number of Larvae", main = "", \dots)
}

\arguments{
  \item{cinid.out}{the returned two-sized list by cinid.table function.}
  \item{breaks}{the breakpoints or the number of cells for the histogramm. See `breaks` in `hist`. See also `Details`.}
  \item{xlab}{the X axis label. The default value is `Headcapsule width`.}
  \item{ylab1}{the left Y axis label. The default value is `Density`.}
  \item{ylab2}{the right Y axis label. The default value is `Number of Larvae`.}
  \item{main}{the main title. The field is empty by default.}
  \item{\dots}{further arguments and graphical parameters passed to `hist`}
}
\details{
The default for `breaks` is `50` because it is usually the best way to cluster HCW data.
}

\value{
An object of class `histogram`. See `hist`.
}

\references{
Merville et al. (2014). Determining the instar of a weevil larva (Coleoptera:Curculionidae) using a parsimonious method. European Journal of Entomology. 111(4). doi: 10.14411/eje.2014.056
}

\author{
Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr}, Adrien Merville, Marie-Claude Bel-Venner and Samuel Venner
}

\seealso{
`hist`
}

\examples{
data(s.oryzae)
soryzae <- s.oryzae$data
mu4.soryzae <- s.oryzae$mu4
sd4.soryzae <- s.oryzae$sd4

HCW.soryzae <- cinid.table(soryzae, mu4 = mu4.soryzae, sd4 = sd4.soryzae)
HCW.soryzae.plot <- cinid.plot(HCW.soryzae, breaks = 50)
}

\keyword{print}
