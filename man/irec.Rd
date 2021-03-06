\name{irec}
\alias{irec}
\title{Interactive recoding}
\usage{
  irec(df, oldvar)
}
\arguments{
  \item{df}{data frame to operate on, as an object or a
  character string}

  \item{oldvar}{name of the variable to be recoded, as a
  character string (possibly without quotes)}
}
\value{
  The function launches a shiny app in the system web
  browser. The recoding code is returned in the console
  when the app is closed with the "Done" button.
}
\description{
  This function launches a shiny app in a web browser in
  order to do interactive recoding of a categorical
  variable (character or factor).
}
\examples{
\dontrun{data(hdv2003)
irec(hdv2003, "qualif")
irec(hdv2003, sexe) ## this also works}
}
\author{
  Julien Barnier <julien.barnier@ens-lyon.fr>
}

