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
  success("Isn't that interesting. The coefficient estimates were 0.57
for the airway component and 0.64 for the quality component. So despite 
quite high overall agreement, once we account for random chance agreement 
by using the kappa coefficient, it seems we can conclude that there was 
only moderate agreement between the two ratings for each of the components 
of the TROOPS instrument.")
}
