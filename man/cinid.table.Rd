\name{cinid.table}
\alias{cinid.table}
\title{Compute the larvae instar in an individual and a population approach.}

\description{
This function assigns any larva with a known headcapsule width to the most probable instar among four possible ones in the focused Curculionid species. 
Estimating the larval instar is achieved by means of two distinct methods so-called "deterministic" and "stochastic", respectively.

Furthermore, from the population of larvae to be assigned to the most probable instar, both mean and standard deviation of the headcapsule 
width are estimated for each of the four larval instars, together with the relative frequency of the four instars in the original population.
}

\usage{
cinid.table(HCW, mu4, sd4, threshold = 0.95, file = NULL, w = c(1, 1, 1, 1))
}

\arguments{
  \item{HCW}{vector of individual HeadCapsule Width (HCW). The measures must be in micrometers. The `NA` values are dismissed by the function.}
  \item{mu4}{estimated mean of the fourth instar. This parameter must be in micrometers. See `Details`.}
  \item{sd4}{estimated standard deviation of the fourth instar. This parameter must be in micrometers. See `Details`.}
  \item{threshold}{determination criterion. The value has to be set between 0.25 and 1. The default criterion is set as 0.95. See `Details`.}
  \item{file}{a character string giving the name of the file where outputs are recorded. Two files are then created, a first one named 
    file_indiv.txt and a second one named file_pop.txt. The NULL value set by default means that the outputs are not recorded}
  \item{w}{vector of instars' weight. By default, the hypothesis is that each instar has the same weight. If any knowledge about relative abundance of each
    instar is available, instar's weights can be adapted.}
}

\details{
The quality of the estimated mu4 and sd4 passed to the function is not controlled. 
Therefore, these two values must be estimated from a quite large sample, and on larvae that ideally do not belong to the dataset.

The larval instar is considered to be correctly assigned to an individual whenever the greatest 
value of the four relative probabilities computed is higher than the threshold.
A threshold equal to 0.25 corresponds to a randomly assigned instar.
A threshold equal to 0.95 means that the relative probability of the assigned instar must be higher or equal than 0.95.    
}

\value{
  The returned value is a list of two elements :
  \item{indiv}{data.frame with eleven values (in column) for each Curculionid individual larva (in row). 
    The columns are the observed headcapsule width (HCW), the larval instar estimated with the deterministic method (instar_determ) 
    and with the stochastic one (instar_stoch), the probability (p) and relative density (rd) to belong to the first, 
    second, third and fourth larval instar.}
  \item{pop}{matrix with six parameters (in row) for the first, second, third, fourth and indetermined 
    larval instar (in column).
    The rows are the estimated mean (mu) and standard deviation (sd) of the headcapsule width distribution, the 
    number of individuals and frequency estimated with both the deterministic method (N_determin and F_determ) and the stochastic one (N_stoch 
    and F_stoch).}
}

\references{
Merville et al., under review, European Journal of Entomology, Determining the instar of a larva: a parsimonious method applied to weevil species.
}

\author{
Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr}, Adrien Merville, Marie-Claude Bel-Venner and Samuel Venner
}

\examples{
data(s.oryzae)
soryzae <- s.oryzae$data
mu4.soryzae <- s.oryzae$mu4
sd4.soryzae <- s.oryzae$sd4

HCW.soryzae <- cinid.table(soryzae, mu4 = mu4.soryzae, sd4 = sd4.soryzae)
head(HCW.soryzae$indiv)
HCW.soryzae$pop
}

\keyword{models}
