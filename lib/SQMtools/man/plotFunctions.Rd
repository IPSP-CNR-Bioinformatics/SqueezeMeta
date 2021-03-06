% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/figures.R
\name{plotFunctions}
\alias{plotFunctions}
\title{Heatmap of the most abundant functions in a SQM object}
\usage{
plotFunctions(
  SQM,
  fun_level = "KEGG",
  count = "tpm",
  N = 25,
  fun = c(),
  ignore_unclassified = T,
  gradient_col = c("ghostwhite", "dodgerblue4"),
  base_size = 11
)
}
\arguments{
\item{SQM}{A SQM or SQMlite object.}

\item{fun_level}{character. Either \code{"KEGG"}, \code{"COG"}, \code{"PFAM"} or any other custom database used for annotation (default \code{"KEGG"}).}

\item{count}{character. Either \code{"tpm"} for TPM normalized values, \code{"abund"} for raw abundances or \code{"copy_number"} for copy numbers (default \code{"tpm"}). If a given count type is not available in this object (e.g. TPM or copy number in a SQMlite objects originating from a SQM reads project) percentages will be plotted instead.}

\item{N}{integer Plot the \code{N} most abundant functions (default \code{25}).}

\item{fun}{character. Custom functions to plot. If provided, it will override \code{N} (default \code{NULL}).}

\item{ignore_unclassified}{logical. Don't include unclassified ORFs in the plot (default \code{TRUE}).}

\item{gradient_col}{A vector of two colors representing the low and high ends of the color gradient (default \code{c("ghostwhite", "dodgerblue4")}).}

\item{base_size}{numeric. Base font size (default \code{11}).}
}
\value{
a ggplot2 plot object.
}
\description{
This function selects the most abundant functions across all samples in a SQM object and represents their abundances in a heatmap. Alternatively, a custom set of functions can be represented.
}
\examples{
data(Hadza)
plotFunctions(Hadza)
}
\seealso{
\code{\link[plotTaxonomy]{plotTaxonomy}} for plotting the most abundant taxa of a SQM object; \code{\link[plotBars]{plotBars}} and \code{\link[plotBars]{plotHeatmap}} for plotting barplots or heatmaps with arbitrary data.
}
