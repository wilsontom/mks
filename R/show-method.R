setMethod('show', signature = 'PGP',
          function(object) {
              cat(cli::rule(
                  left = crayon::bold(crayon::yellow('Mailvelope Key Server')),
                  right = paste0('mks v', utils::packageVersion('mks'))
              ), '\n','\n')


              cat(crayon::bold(crayon::cyan(object@meta$Email)), '\n')

              cat('\t', cli::cat_bullet(paste0('ID: ', object@ID)), '\n')
              cat('\t', cli::cat_bullet(paste0('Fingerprint: ', object@fingerprint)), '\n')

          })
