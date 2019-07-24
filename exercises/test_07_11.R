test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("x = MCS", .solution, fixed = TRUE)) {
    stop("MCS has to be on the x-axis of the plot")
  }
  if (!grepl("y = PHQ9", .solution, fixed = TRUE)) {
    stop("PHQ9 has to be on the y-axis of the plot")
  }
  # This function is defined in the testTemplate
success("Great work. This plot shows that there was a statistically significant 
(p<0.001) negative correlation between scores on the Mental Health subscale of 
the SF36 and PHQ9.The results confirm our hypothesis and provides evidence of the 
convergent validity of the PHQ9. ")
}
