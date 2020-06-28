#' Accessor Methods for the PGP S4 class

#' @include allClasses.R
#' @include allGenerics.R

#' pgp
#' @rdname pgp
#' @description Get the `PGP KEY`
#' @param object a `PGP` S4 object
#' @export

setMethod('pgp', signature = 'PGP',
          function(object) {
              cat(object@key)
          })

#' meta
#' @rdname meta
#' @description Get the associated meta data
#' @param object a `PGP` S4 object
#' @export

setMethod('meta', signature = 'PGP',
          function(object) {
              object@meta
          })

#' id
#' @rdname id
#' @description Get the `PGP KEY` ID
#' @param object a `PGP` S4 object
#' @export

setMethod('id', signature = 'PGP',
          function(object) {
              object@ID
          })

#' fingerprint
#' @rdname fingerprint
#' @description Get the `PGP KEY` fingerprint value
#' @param object a `PGP` S4 object
#' @export

setMethod('fingerprint', signature = 'PGP',
          function(object) {
              object@fingerprint
          })


#' write_key
#' @rdname write_key
#' @description Write the `PGP_KEY` to a file
#' @param object a `PGP` S4 object
#' @param outpath a valid directory where the key will be saved to
#' @export


setMethod('write_key', signature = 'PGP',
          function(object, outpath) {
              filename <- paste0(outpath, '/', object@meta$Email, '_pub.pgp')

              writeLines(object@key, filename)

          })
