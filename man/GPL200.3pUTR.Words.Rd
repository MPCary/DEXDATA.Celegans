% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{GPL200.3pUTR.Words}
\alias{GPL200.3pUTR.Words}
\title{Data: A probeset:3'-UTR word annotation matrix}
\format{A binary matrix with probeset IDs in rows and words in columns.}
\usage{
GPL200.3pUTR.Words
}
\description{
This is a binary probeset annotation matrix containing Affymetrix probeset IDs in rows and
predicted 3'-UTR regulatory words (oligonucleotides) in columns.  A value of 1 in the matrix
indicates that the word appears more often than expected by random chance in the 3'-UTR
of the gene to which the probeset has been mapped.  Because 3'-UTRs vary in length between genes,
it is necessary to divide the number of observed occurences by the number of expected occurences
for each word in each 3'-UTR.  If this value is greater than 0.5, we score the word as 'present',
and we score it as 'absent' if it is not.  The 3'-UTR regulatory word dictionary was compiled
using the MobyDick algorithm (see \url{https://www.ncbi.nlm.nih.gov/pubmed/10977067}).
}
\keyword{datasets}
