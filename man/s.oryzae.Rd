\name{s.oryzae}
\alias{s.oryzae}
\docType{data}
\title{Data on Sitophilus orizae}

\description{
s.oryzae is a list of three elements:\itemize{
 \item{$data: 97 measures (in micrometers) of the headcapsule width of rice weevil larvae (\emph{Sitophilus orizae}) belonging to any of four possible instars.}
 \item{$mu4: the mean headcapsule width (in micrometers) estimated from 40 fourth-instar \emph{S. oryzae} larvae.
    These 40 larvae doesn't belong to the data set s.oryzae$data as stated previously.}
 \item{$sd4: the standard deviation of headcapsule width (in micrometers) estimated from 40 fourth-instar \emph{S. oryzae} larvae.
    These 40 larvae doesn't belong to the data set s.oryzae$data as stated previously.}
}}

\usage{data(s.oryzae)}

\format{
The format is a list of three elements:\itemize{
 \item{$data: a vector of 97 numerical values}
 \item{$mu4 : a single numerical value}
 \item{$sd4 : a single numerical value}
}}

\references{
Merville et al., under review, European Journal of Entomology, Determining the instar of a larva: a parsimonious method applied to weevil species.
}

\examples{
data(s.oryzae)
hcw <- s.oryzae$data
length(hcw)   # 97
mu4.soryzae <- s.oryzae$mu4   # 589
sd4.soryzae <- s.oryzae$sd4   # 24.43
}

\keyword{datasets}
