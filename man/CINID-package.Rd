\name{CINID-package}
\alias{CINID-package}
\alias{CINID}
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
Package: \tab CINID\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-10-11\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
}

\author{
Aurelie Siberchicot, Adrien Merville, Marie-Claude Bel-Venner and Samuel Venner\cr
Maintainer: aurelie.siberchicot@univ-lyon1.fr 
}

\references{
Merville et al., under review, European Journal of Entomology, Determining the instar of a larva: a parsimonious method applied to weevil species.
}

\keyword{package}
