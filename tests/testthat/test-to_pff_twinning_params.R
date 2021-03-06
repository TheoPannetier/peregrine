test_that("use", {

  twinning_params <- pirouette::create_twinning_params(
    twin_alignment_filename = "/puf"
  )
  expect_error(check_pff_twinning_params(twinning_params))
  expect_silent(
    check_pff_twinning_params(to_pff_twinning_params(twinning_params))
  )
})
