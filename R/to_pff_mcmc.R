#' Converts a mcmc to have PFF.
#' If all filenames are Peregrine-friendly,
#' this function does not alter the input
#' @inheritParams default_params_doc
#' @export
to_pff_mcmc <- function(mcmc) {

  beautier::check_mcmc(mcmc)

  if (!peregrine::is_pff(mcmc$treelog$filename)) {
    mcmc$treelog$filenames <- peregrine::to_pff(mcmc$treelog$filename)
  }

  # The MCMC must be initialized
  testit::assert(!beautier::is_one_na(mcmc$tracelog$filename))
  if (!peregrine::is_pff(mcmc$tracelog$filename)) {
    mcmc$tracelog$filename <- peregrine::to_pff(mcmc$tracelog$filename)
  }

  peregrine::check_pff_mcmc(mcmc)
  mcmc
}
