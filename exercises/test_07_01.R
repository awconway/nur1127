test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (grepl("mean(nominal)", .solution, fixed = TRUE)) {
    stop("All we can do with nominal variables is compare if one category is the same as 
the other. For the solution or a hint, press the buttons below.")
  }
  if (grepl("mean(rank)", .solution, fixed = TRUE)) {
    stop("This variable is just a rank ordering of categies without an assigned numeric 
value. So we can't calculate the average. For the solution or a hint, press the buttons below.")
  }
  # This function is defined in the testTemplate
  success("You got this down! In this example, we used the special case for ordinal 
variables whereby we treated the numerical values assigned to the rankings 
essentially as an interval level measurement.")
}
    