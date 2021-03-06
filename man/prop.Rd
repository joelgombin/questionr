\name{prop}
\alias{prop}
\title{Global percentages of a two-way frequency table.}
\usage{
  prop(tab, digits = 1, total = TRUE, percent = FALSE,
    drop = TRUE, n = FALSE)
}
\arguments{
  \item{tab}{frequency table}

  \item{digits}{number of digits to display}

  \item{total}{if \code{TRUE}, add a column with the sum of
  percentages and a row with global percentages}

  \item{percent}{if \code{TRUE}, add a percent sign after
  the values when printing}

  \item{drop}{if \code{TRUE}, lines or columns with a sum
  of zero, which would generate \code{NaN} percentages, are
  dropped.}

  \item{n}{if \code{TRUE}, display number of observations
  per row and per column.}
}
\value{
  The result is an object of class \code{table} and
  \code{proptab}.
}
\description{
  Return the percentages of a two-way frequency table with
  formatting and printing options.
}
\examples{
## Sample table
data(Titanic)
tab <- apply(Titanic, c(1,4), sum)
## Percentages
prop(tab)
## Percentages with custom display
prop(tab, digits=2, percent=TRUE, total=FALSE, n=TRUE)
}
\seealso{
  \code{\link[questionr]{rprop}},
  \code{\link[questionr]{cprop}}, \code{\link{table}},
  \code{\link{prop.table}}
}

