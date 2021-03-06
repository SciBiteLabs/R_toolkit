#' edescribe
#'
#' \code{autocomplete} passes user-specified information to the Ontology API
#' edescribe endpoint. Operation of this function requires a valid license to
#' TERMite provided by SciBite.
#'
#' @param id A string representing a TERMite-compatible ID for a single named
#'   entity.
#' @export

edescribe <- function(
  endpoint = "http://localhost:9090/termite/toolkit/edescribe.api",
  id
){

  ####################
  # Payload creation #
  ####################

  payload <- list(
    # Payload Core
    id = id
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

  response <- httr::content(response_raw, as = "text")
  response_parsed <- jsonlite::fromJSON(response)
  return(response_parsed)
}
