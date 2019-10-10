test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("specify(BP", .solution, fixed = TRUE)) {
    stop("BP is the outcome variable")
  }
  if (!grepl("depressed) %>%", .solution, fixed = TRUE)) {
    stop("depressed is the predictor variable. Press 'hint' for a tip")
  }
  # This function is defined in the testTemplate
success("Well done. Inspect the plot and p-value closely then answer the question
below.")
}
