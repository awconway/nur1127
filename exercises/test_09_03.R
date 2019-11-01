test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("ROOM_TEMP", .solution, fixed = TRUE)) {
    stop("Are you sure you have got the variable for room temp correct?")
  }
  # This function is defined in the testTemplate
  success("Great work")
}
