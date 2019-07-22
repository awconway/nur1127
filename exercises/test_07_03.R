test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("airway", .solution, fixed = TRUE)) {
    stop("We need to insert the word airway into the brackets to run the analysis")
  }
  if (!grepl("quality", .solution, fixed = TRUE)) {
    stop("We need to insert the word quality into the brackets to run the analysis")
  }  
  # This function is defined in the testTemplate
success("Good job! What we can see from the results above is that both 
dataframes consist of two ordinal variables with 40 observations each. 
What we can also already see is that agreement between the two raters is 
not perfect. For example, rater 1's 3rd observation was classes as 'None', 
whereas rater 2 classed this as a 'Minor' complication. Let's invesigate
further in the next exercise.")
}
