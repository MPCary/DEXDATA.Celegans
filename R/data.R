#' Data: A compendium of C. elegans Affymetrix microarry data
#'
#' A \code{22,625 x 1386} matrix containing Affymetrix microarray data gathered from the GEO
#' database for the model orgnaism \emph{C. elegans}.  The matrix was preprared by
#' running the \code{\link[affy]{rma}} algorithm on all of the arrays from a particular
#' experiment (arrays with the same GSE ID in GEO), followed by bias correction using
#' the \code{\link[bias]{biasCorrection}} algorithm.  Between-array quantile normalization
#' was not performed, as this tended to degrade the performance of the fastICA algorithm.
#'
#' @details The original matrix has been split into three pieces in order to comply with
#' GitHub file size limits; users should combine the three matrices using \code{\link[base]{cbind}}
#' to work with the full matrix (see examples).
#'
#' @format A numeric matrix with probesets in rows and arrays in columns.
#'
#' @examples
#' \dontrun{
#' # Combine pieces into single matrix
#' x = cbind(GPL200.arrays.1_to_500, GPL200.arrays.501_to_1000,
#'   GPL200.arrays.1001_to_1386)
#' }
#'
"GPL200.arrays.1_to_500"

#' @rdname GPL200.arrays.1_to_500
"GPL200.arrays.501_to_1000"

#' @rdname GPL200.arrays.1_to_500
"GPL200.arrays.1001_to_1386"

#' Data: A probeset:GO annotation matrix
#'
#' This is a binary probeset annotation matrix containing Affymetrix probeset IDs in rows and
#' Gene Ontology (GO) IDs in columns.  A value of 1 in the matrix indicates that the gene to
#' which the probeset has been mapped has been annotated with the corresponding GO term.  The
#' data was collected from the ENSEMBL database using the \code{biomaRt} package.
#'
#' @format A binary matrix with probeset IDs in rows and GO IDs in columns.
#'
"GPL200.GO"

#' Data: A probeset:REACTOME annotation matrix
#'
#' This is a binary probeset annotation matrix containing Affymetrix probeset IDs in rows and
#' REACTOME IDs in columns.  A value of 1 in the matrix indicates that the gene to
#' which the probeset has been mapped has been annotated with the corresponding REACTOME pathway
#' or complex.  The data was collected from the ENSEMBL database using the \code{biomaRt} package.
#'
#' @format A binary matrix with probeset IDs in rows and REACTOME IDs in columns.
#'
"GPL200.REACTOME"

#' Data: A probeset:tissue annotation matrix
#'
#' This is a binary probeset annotation matrix containing Affymetrix probeset IDs in rows and
#' \emph{C. elegans} tissues in columns.  A value of 1 in the matrix indicates that the gene to
#' which the probeset has been mapped has been found to be expressed in the corresponding tissue.
#' The data was collected from the \href{http://gfpworm.org}{GFP Worm} database.
#'
#' @format A binary matrix with probeset IDs in rows and tissues in columns.
#'
"GPL200.TissueExpr"

#' Data: A probeset:promoter word annotation matrix
#'
#' This is a binary probeset annotation matrix containing Affymetrix probeset IDs in rows and
#' predicted promoter regulatory words (oligonucleotides) in columns.  A value of 1 in the matrix
#' indicates that the gene to which the probeset has been mapped contains the corresponding word in
#' its 2-kb promoter region.  The promoter word dictionary was compiled using the MobyDick algorithm
#' (see \url{https://www.ncbi.nlm.nih.gov/pubmed/10977067}).
#'
#' @format A binary matrix with probeset IDs in rows and words in columns.
#'
"GPL200.PromoterWords"

#' Data: A probeset:3'-UTR word annotation matrix
#'
#' This is a binary probeset annotation matrix containing Affymetrix probeset IDs in rows and
#' predicted 3'-UTR regulatory words (oligonucleotides) in columns.  A value of 1 in the matrix
#' indicates that the word appears more often than expected by random chance in the 3'-UTR
#' of the gene to which the probeset has been mapped.  Because 3'-UTRs vary in length between genes,
#' it is necessary to divide the number of observed occurences by the number of expected occurences
#' for each word in each 3'-UTR.  If this value is greater than 0.5, we score the word as 'present',
#' and we score it as 'absent' if it is not.  The 3'-UTR regulatory word dictionary was compiled
#' using the MobyDick algorithm (see \url{https://www.ncbi.nlm.nih.gov/pubmed/10977067}).
#'
#' @format A binary matrix with probeset IDs in rows and words in columns.
#'
"GPL200.3pUTR.Words"

#' Data: A set of predicted gene modules for the model organism C. elegans
#'
#' A \code{22,625 x 209} matrix containing loadings (weights) of each gene in 209
#' predicted gene modules.  Modules were predicted using the DEXICA package and
#' the GPL200.1386 compendium.
#'
#' @format A numeric matrix with probesets in rows and gene modules in columns.
#'
"GPL200.S"
