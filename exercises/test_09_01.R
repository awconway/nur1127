test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("ci_proportion(589", .solution, fixed = TRUE)) {
    stop("Are you sure you have the first argument correct? Press 'hint' for a tip")
  }
  if (!grepl("1068)", .solution, fixed = TRUE)) {
    stop("Are you sure you have the second argument correct? Press 'hint' for a tip")
  }
  # This function is defined in the testTemplate
success("Well done. The confidence intervals were quite narrow.")
}
