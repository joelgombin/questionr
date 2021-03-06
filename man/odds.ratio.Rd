\name{odds.ratio}
\alias{odds.ratio}
\alias{odds.ratio.factor}
\alias{odds.ratio.glm}
\alias{odds.ratio.multinom}
\alias{odds.ratio.table}
\title{Odds Ratio}
\usage{
  odds.ratio(x, ...)

  \method{odds.ratio}{glm} (x, level = 0.95, digits = 3,
    ...)

  \method{odds.ratio}{multinom} (x, level = 0.95,
    digits = 3, ...)

  \method{odds.ratio}{factor} (x, y, level = 0.95, ...)

  \method{odds.ratio}{table} (x, level = 0.95, ...)
}
\arguments{
  \item{x}{object from whom odds ratio will be computed}

  \item{...}{further arguments passed to or from other
  methods}

  \item{level}{the confidence level required}

  \item{digits}{number of decimal to display}

  \item{y}{a second factor object}
}
\value{
  For \code{glm} or \code{multinom} objects, returns odds
  ratios, their confidence interval and tests if they
  differ from 1.

  For 2x2 \code{table} or \code{factor} objects,
  \code{odds.ratio} is a wrapper for \code{fisher.test}.
}
\description{
  S3 method for odds ratio
}
\details{
  For models calculated with \code{glm}, \code{x} should
  have been calculated with \code{family=binomial}. p-value
  are the same as \code{summary(x)$coefficients[,4]}. Odds
  ratio could also be obtained with \code{exp(coef(x))} and
  confidence intervals with \code{exp(confint(x))}.

  For models calculated with \code{multinom} (nnet),
  p-value are calculated according to
  \url{http://www.ats.ucla.edu/stat/r/dae/mlogit.htm}.
}
\examples{
data(hdv2003)
reg <- glm(cinema ~ sexe + age, data=hdv2003, family=binomial)
odds.ratio(reg)
odds.ratio(hdv2003$sport, hdv2003$cuisine)
odds.ratio(table(hdv2003$sport, hdv2003$cuisine))
}
\author{
  Joseph Larmarange <joseph@larmarange.net>
}
\seealso{
  \code{\link{glm}} in the \link{stats} package.

  \code{\link[nnet]{multinom}} in the \link[nnet]{nnet}
  package.

  \code{\link{fisher.test}} in the \link{stats} package.
}

