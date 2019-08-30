test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("2*SEM", .solution, fixed = TRUE)) {
    stop("Type SEM in place of one of the dotted lines")
  }
  if (!grepl("upperCI <- mean", .solution, fixed = TRUE)) {
    stop("Type mean in place of one of the dotted lines to produce an upper limit")
  }
  if (!grepl("lowerCI <- mean", .solution, fixed = TRUE)) {
    stop("Type mean in place of one of the dotted lines to produce an upper limit")
  }
  # This function is defined in the testTemplate
success("Great work! Based on your calculation of data from the sample of 50 nurses, 
we can say that we are 95% confident that the true mean leadership score in the 
population would be between 2.75 to 6.35")
}
