% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/termite.R
\name{get_entity_hits_from_json}
\alias{get_entity_hits_from_json}
\title{Get entity hits from TERMite JSON}
\usage{
get_entity_hits_from_json(termite_json_response,
  columns_to_return = c("hitID", "entityType", "name", "hitCount",
  "totnosyns", "goodSynCount", "realSynList", "score", "exact_string",
  "frag_vector_array"))
}
\arguments{
\item{termite_json_response}{JSON TERMite response object}

\item{columns_to_return}{character list of TERMite JSON attributes to include in the output}
}
\value{
dataframe
}
\description{
Converts TERMite JSON response to dataframe of entity hits.
}
