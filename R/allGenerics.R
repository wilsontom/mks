

#' @rdname pgp
setGeneric('pgp', function(object) {
    standardGeneric('pgp')
})

#' @rdname meta
setGeneric('meta', function(object) {
    standardGeneric('meta')
})

#' @rdname id
setGeneric('id', function(object) {
    standardGeneric('id')
})

#' @rdname fingerprint
setGeneric('fingerprint', function(object) {
    standardGeneric('fingerprint')
})

#' @rdname write_key
setGeneric('write_key', function(object, outpath) {
    standardGeneric('write_key')
})
