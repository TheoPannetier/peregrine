test_that("use", {

  expect_silent(
    check_pff_pir_params(
      create_pff_pir_params(
        alignment_params = pirouette::create_test_alignment_params()
      )
    )
  )
})
