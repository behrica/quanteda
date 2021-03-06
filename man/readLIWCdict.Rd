% Generated by roxygen2 (4.0.2): do not edit by hand
\name{readLIWCdict}
\alias{readLIWCdict}
\title{Import a LIWC-formatted dictionary}
\usage{
readLIWCdict(path, maxcats = 10, enc = "")
}
\arguments{
\item{path}{full pathname of the LIWC-formatted dictionary file (usually a
file ending in .dic)}

\item{maxcats}{the maximum number of categories to read in, set by the
maximum number of dictionary categories that a term could belong to.  For
non-exclusive schemes such as the LIWC, this can be up to 7.  Set to 10 by
default, which ought to be more than enough.}

\item{enc}{a valid input encoding for the file to be read, see
\link{iconvlist}}
}
\value{
a dictionary class named list, where each the name of element is a
  bottom level category in the hierarchical wordstat dictionary. Each element
  is a list of the dictionary terms corresponding to that level.
}
\description{
Make a flattened dictionary list object from a LIWC dictionary file.
}
\examples{
\dontrun{
LIWCdict <- readLIWCdict("~/Dropbox/QUANTESS/corpora/LIWC/LIWC2001_English.dic") }
}
\author{
Kenneth Benoit
}

