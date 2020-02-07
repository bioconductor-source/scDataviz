\name{plotSignatures}

\alias{plotSignatures}

\title{plotSignatures}

\description{Find enriched markers per identified cluster and visualise these as a custom corrplot.}

\usage{
  plotSignatures(sce,
  clusterVector = metadata(sce)[['Cluster']],
  funcSummarise = function(x) median(x, na.rm = TRUE),
  col = colorRampPalette(rev(brewer.pal(9, 'RdBu')))(100),
  cexlab = 1.0,
  cexlegend = 1.0,
  labDegree = 90)
}

\arguments{
  \item{sce}{A SingleCellExperiment object. REQUIRED.}
  \item{clusterVector}{A vector of cell-to-cluster assignments. This can be
    from any source but ought to be taken from the metadata. DEFAULT =
    metadata(sce)[['Cluster']]. OPTIONAL.}
  \item{funcSummarise}{A mathematical function used to summarise expression
    per marker per cluster. DEFAULT = function(x) median(x, na.rm = TRUE).
    OPTIONAL.}
  \item{col}{colorRampPalette to be used for shading low-to-high expression.
    DEFAULT = colorRampPalette(rev(brewer.pal(9, 'RdBu')))(100). OPTIONAL.}
  \item{cexlab}{cex of the main plot labels. DEFAULT = 1.0. OPTIONAL.}
  \item{cexlegend}{cex of the legend labels. DEFAULT = 1.0. OPTIONAL.}
  \item{labDegree}{Rotation angle of the main plot labels. DEFAULT = 90.
    OPTIONAL.}
}

\value{
A \code{\link{corrplot}} object.
}

\author{
Kevin Blighe <kevin@clinicalbioinformatics.co.uk>
}

\examples{
  # not run
}
