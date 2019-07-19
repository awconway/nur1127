test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (grepl("'temp'", .solution, fixed = TRUE)) {
    stop("No need to use quotes. Just write the word temp")
  }
  if (grepl("'time'", .solution, fixed = TRUE)) {
    stop("No need to use quotes. Just write the word time")
  }  
  # This function is defined in the testTemplate
  success("Looks like a lot of variation between repeated measurements.
We definitely need to calculate the agreement here. Move on to the next
exercise to find out how.")
}
