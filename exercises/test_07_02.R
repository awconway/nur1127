test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (grepl("nominal1 > nominal2", .solution, fixed = TRUE)) {
    stop("All we can do with nominal variables is compare if one category is the same as 
the other. For the solution or a hint, press the buttons below.")
  }
  # This function is defined in the testTemplate
success("Correct! Nominal variables can not be used to determine if one observation 
is lesser or greathan than another observation.")
}
    