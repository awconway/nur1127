test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("(10000", .solution, fixed = TRUE)) {
    stop("Are you sure you have the right number of flips set in the first argument?")
  }
  if (grepl(",30", .solution, fixed = TRUE)) {
    stop("The probability has to be a proportion. Eg 0.5 for 50%")
  }
  # This function is defined in the testTemplate
success("Great work! You just generated your first random variable from a binomial
distribution.😎 Now let's delve a bit deeper and visualise the distribution.")
}
