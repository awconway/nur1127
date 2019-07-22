test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (grepl("'airway'", .solution, fixed = TRUE)) {
    stop("No need to use quotes. Just write the word airway")
  }
  if (grepl("'quality'", .solution, fixed = TRUE)) {
    stop("No need to use quotes. Just write the word quality")
  }  
  # This function is defined in the testTemplate
  success("So - looks like we were right. Agreement between ratings was only 80% for the airway component of TROOPS. Agreement for sedation quality was much better. However, we have not taken into account 'chance'agreement. Go on to the next exercise to learn more about this.")
}
