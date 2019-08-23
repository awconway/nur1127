test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("Nurse", .solution, fixed = TRUE)) {
    stop("Type Nurse in place of one of the arguments for data.frame")
  }
  if (!grepl("Score", .solution, fixed = TRUE)) {
    stop("Type Score in place of one of the arguments for data.frame")
  }
  # This function is defined in the testTemplate
success("Because the standard devation is a standardized score – we can now focus 
on particular scores and see whether or not they lie within 1 standard deviation 
of the mean. We see Nurse 5 is more than 1 standard deviation below the mean – 
and so we can conclude that the 'burnout' rating scored by this nurse is rather 
low. Similarly, Nurse 2 scored more than 1 standard deviation above the mean – 
substantially more risk of burnout 😯!")
}
