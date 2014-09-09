\name{cinid-package}
\alias{cinid-package}
\alias{cinid}
\docType{package}
\title{Package on the Curculionidae INstar IDentification}

\description{
  This package provides a function computing the Gaussian distributions of the headcapsule width of the first three larval 
  instars of any given Curculionid species from the observed distribution of headcapsule sizes of mature larvae from the same species.
  
  Any larva of this species is assigned to the most probable instar, only using its own headcapsule width and the size distribution 
  of the last larval instar, i.e. the mature instar, of the considered species.

  The regular usage in this package is to use firstly the \code{\link{cinid.table}} function and secondly the \code{\link{cinid.plot}} function.
}

\details{
\tabular{ll}{
Package: \tab cinid\cr
Type: \tab Package\cr
Version: \tab 0.9\cr
Date: \tab 2013-07-03\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
}

\author{
Aurelie Siberchicot, Adrien Merville, Marie-Claude Bel-Venner and Samuel Venner\cr
Maintainer: aurelie.siberchicot@univ-lyon1.fr 
}

\references{
Merville et al. (2014). Determining the instar of a weevil larva (Coleoptera:Curculionidae) using a parsimonious method. European Journal of Entomology. 111(4). doi: 10.14411/eje.2014.056 
}

\keyword{package}
