test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("ci_proportion(29", .solution, fixed = TRUE)) {
    stop("Are you sure you have the first argument correct? Press 'hint' for a tip")
  }
  if (!grepl("50)", .solution, fixed = TRUE)) {
    stop("Are you sure you have the second argument correct? Press 'hint' for a tip")
  }
  # This function is defined in the testTemplate
success("As you can see, the confidence intervals are substantially wider in this 
hypothetical example than those from the real survey, indicating the high degree 
of uncertainty that would be present had the sample size been much smaller. Hopefully
this has demonstrated to you the importance of being cautious when interpreting
results from surveys that don't report confidence intervals.")
}
