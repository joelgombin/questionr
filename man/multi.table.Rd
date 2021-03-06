\name{multi.table}
\alias{multi.table}
\title{One-way frequency table for multiple choices question}
\usage{
  multi.table(df, true.codes = NULL, weights = NULL)
}
\arguments{
  \item{df}{data frame with the binary variables}

  \item{true.codes}{optional list of values considered as
  'true' for the tabulation}

  \item{weights}{optional weighting vector}
}
\value{
  Object of class table.
}
\description{
  This function allows to generate a frequency table from a
  multiple choices question. The question's answers must be
  stored in a series of binary variables.
}
\details{
  The function is applied to a series of binary variables,
  each one corresponding to a choice of the question. For
  example, if the question is about seen movies among a
  movies list, each binary variable would correspond to a
  movie of the list and be true or false depending of the
  choice of the answer.

  By default, only '1' and 'TRUE' as considered as 'true'
  values fro the binary variables, and counted in the
  frequency table. It is possible to specify other values
  to be counted with the \code{true.codes} argument. Note
  than '1' and 'TRUE' are always considered as true values
  even if \code{true.codes} is provided.
}
\examples{
## Sample data frame
sex <- sample(c("Man","Woman"),100,replace=TRUE)
jazz <- sample(c(0,1),100,replace=TRUE)
rock <- sample(c(TRUE, FALSE),100,replace=TRUE)
electronic <- sample(c("Y","N"),100,replace=TRUE)
weights <- runif(100)*2
df <- data.frame(sex,jazz,rock,electronic,weights)
## Frequency table on 'music' variables
multi.table(df[,c("jazz", "rock","electronic")], true.codes=list("Y"))
## Weighted frequency table on 'music' variables
multi.table(df[,c("jazz", "rock","electronic")], true.codes=list("Y"), weights=df$weights)
}
\seealso{
  \code{\link[questionr]{cross.multi.table}},
  \code{\link[questionr]{multi.split}}, \code{\link{table}}
}

