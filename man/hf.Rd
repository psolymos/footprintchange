\name{hf}
\alias{hf}
\docType{data}
\title{
HF data
}
\description{
HF data
}
\usage{data("hf")}
\format{
  The format is:
 num [1:7, 1:8, 1:15] 0 0.0441 0.1432 0.022 0.0318 ...
 - attr(*, "dimnames")=List of 3
  ..$ : chr [1:7] "Canadian Shield" "Boreal" "Parkland" "Foothills" ...
  ..$ : chr [1:8] "Human-created Water Bodies" "Agriculture" "Urban, Rural & Industrial" "Mines, Wells & Other Energy Features" ...
  ..$ : chr [1:15] "1999" "2001" "2002" "2003" ...
}
\source{
www.abmi.ca
}
\examples{
data(hf)
str(hf)
}
\keyword{datasets}
