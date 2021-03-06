#' autocomplete
#'
#' \code{autocomplete} passes user-specified information to the Ontology API
#' autocomplete endpoint. Operation of this function requires a valid license to
#' TERMite provided by SciBite.
#'
#' @param endpoint A string specifying the IP and API endpoint of TERMite.
#'   Defaults to "http://localhost:9090/termite/toolkit/autocomplete.api"
#'   representing a typical installation.
#' @param input An alphanumeric string representing text to be autocomplete'd.
#'   Input must be greater than 2 characters long.
#' @param VOCab A string representing the VOCab to be used for
#'   autocomplete.
#' @param taxon A character vector of taxonomic limits of the form
#'   \code{VOCAB.limit=taxon:TAXONOMY_NAME:Taxonomy.path.branch;}. Defaults to
#'   \code{''}.
#' @export

autocomplete <- function(endpoint="http://localhost:9090/termite/toolkit/autocomplete.api",
                    input,
                    VOCab,
                    taxon = ''
                    ){

  #########
  # Error #
  #########

  if (nchar(input) < 3) {
    stop('input must be 3 or more characters.')
  }

  ####################
  # Payload creation #
  ####################

  payload <- list(
    # Payload Core
    term = input,
    e = VOCab,
    limit = taxon
  )

  ########
  # POST #
  ########

  response_raw <- httr::POST(
    url = endpoint,
    body = payload,
    encode = "multipart"
  )

  ##########
  # Output #
  ##########

  response <- httr::content(response_raw, as = "parsed")
  response_parsed <- jsonlite::fromJSON(response)
  return(response_parsed)
}
