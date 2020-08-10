test_that("mks works", {
    expect_null(search_email('email@address.com'))

    OB <- search_email('tpw2@aber.ac.uk')

    expect_true(isS4(OB))
    expect_true(is.character(fingerprint(OB)))
    expect_true(is.character(id(OB)))

})
