\name{clipcopy}
\alias{clipcopy}
\alias{clipcopy.default}
\alias{clipcopy.proptab}
\alias{copie}
\alias{copie.default}
\alias{copie.proptab}
\title{Transform an object into HTML and copy it for export}
\usage{
  clipcopy(obj, ...)

  \method{clipcopy}{default} (obj, append = FALSE,
    file = FALSE, filename = "temp.html",
    clipboard.size = 4096, ...)

  \method{clipcopy}{proptab} (obj, percent = NULL,
    digits = NULL, justify = "right", ...)
}
\arguments{
  \item{obj}{object to be copied}

  \item{...}{arguments passed to \code{R2HTML::HTML}}

  \item{append}{if TRUE, append to the file instead of
  replacing it}

  \item{file}{if TRUE, export to a file instead of the
  clipboard}

  \item{filename}{name of the file to export to}

  \item{clipboard.size}{under Windows, size of the
  clipboard in kB}

  \item{percent}{whether to add a percent sign in each
  cell}

  \item{digits}{number of digits to display}

  \item{justify}{justification}
}
\value{
  \code{NULL}

  \code{NULL}
}
\description{
  This function transforms its argument to HTML and then
  copy it to the clipboard or to a file for later use in an
  external application.
}
\details{
  Under linux, this function requires that \code{xclip} is
  installed on the system to copy to the clipboard.
}
\examples{
data(iris)
tab <- table(cut(iris$Sepal.Length,8),cut(iris$Sepal.Width,4))
\dontrun{copie(tab)}
ptab <- rprop(tab, percent=TRUE)
\dontrun{clipcopy(ptab)}
}
\seealso{
  \code{\link[R2HTML]{HTML}},
  \code{\link[questionr]{format.proptab}}

  \code{\link[questionr]{clipcopy}},
  \code{\link[questionr]{format.proptab}}
}
\keyword{connection}

