% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autocomplete.R
\name{autocomplete}
\alias{autocomplete}
\title{autocomplete}
\usage{

  autocomplete(endpoint = "http://localhost:9090/termite/toolkit/autocomplete.api",
  input, VOCab, taxon = "")
}
\arguments{
\item{endpoint}{A string specifying the IP and API endpoint of TERMite.
Defaults to "http://localhost:9090/termite/toolkit/autocomplete.api"
representing a typical installation.}

\item{input}{An alphanumeric string representing text to be autocomplete'd.
Input must be greater than 2 characters long.}

\item{VOCab}{A string representing the VOCab to be used for
autocomplete.}

\item{taxon}{A character vector of taxonomic limits of the form
\code{VOCAB.limit=taxon:TAXONOMY_NAME:Taxonomy.path.branch;}. Defaults to
\code{''}.}
}
\description{
\code{autocomplete} passes user-specified information to the Ontology API
autocomplete endpoint. Operation of this function requires a valid license to
TERMite provided by SciBite.
}
