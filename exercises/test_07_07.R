test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("iccdata", .solution, fixed = TRUE)) {
    stop("We only need to insert the name of the dataframe in place of the dotted line.")
  }
  # This function is defined in the testTemplate
success("The ICC was 0.74. Based on the reference table to assist with interpretation of 
ICC values presented above, we can conclude that the thermometer used in this study 
demonstrated only moderate test-retest reliability.")
}
