
setOldClass(c('tbl_df', 'tbl', 'data.frame'))

#' PGP Class
#' @description
#' @slot ID
#' @slot fingerprint
#' @slot meta
#' @slot key
#' @export

setClass('PGP', representation = representation(
    ID = 'character'  ,
    fingerprint = 'character',
    meta = 'tbl_df',
    key = 'character'
))
