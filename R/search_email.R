#' Search the Mailvelope Key Server by Email
#'
#'
#' @param email a character string of an email address to search on the Mailvelope Key Server
#' @return a `PGP` S4 object
#' @export

search_email <- function(email)
{
    BASE_URL <- 'https://keys.mailvelope.com/api/v1/key?'

    query_url <- paste0(BASE_URL, 'email=', email)

    api_result <- httr::GET(query_url)


    if (httr::status_code(api_result) == 200) {
        parse_call <- httr::content(api_result, 'parsed')

        object <- methods::new('PGP')

        object@ID <- parse_call$keyId
        object@fingerprint <- parse_call$fingerprint

        meta_tibble <- tibble::tibble(
            Name = parse_call$userIds[[1]]$name,
            Email = parse_call$userIds[[1]]$email,
            Verified = parse_call$userIds[[1]]$verified,
            Created = lubridate::as_datetime(parse_call$created),
            Uploaded = lubridate::as_datetime(parse_call$uploaded),
            Size = parse_call$keySize,
            Algorithm = parse_call$algorithm
        )

        object@meta <- meta_tibble

        object@key <- parse_call$publicKeyArmored

        return(object)

    }

    if (httr::status_code(api_result) == 404) {
        message('Email address not found')

        return(invisible(NULL))
    }

}
