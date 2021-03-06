\name{rename.variable}
\alias{rename.variable}
\alias{renomme.variable}
\title{Rename a data frame column}
\usage{
  rename.variable(df, old, new)
}
\arguments{
  \item{df}{data frame}

  \item{old}{old name}

  \item{new}{new name}
}
\value{
  A data frame with the column named "old" renamed as "new"
}
\description{
  Rename a data frame column
}
\examples{
data(iris)
str(iris)
iris <- rename.variable(iris, "Species", "especes")
str(iris)
}
\keyword{manip}

