test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("x = MCS", .solution, fixed = TRUE)) {
    stop("MCS has to be on the x-axis of one of the plots")
  }
  if (!grepl("x = PCS", .solution, fixed = TRUE)) {
    stop("PCS has to be on the x-axis of one of the plots")
  }
  if (!grepl("y = PHQ9", .solution, fixed = TRUE)) {
    stop("PHQ9 has to be on the y-axis for both of the plots")
  }
  # This function is defined in the testTemplate
success("Take a look at the plots then answer the question below")
}
