test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("0.74", .solution, fixed = TRUE)) {
    stop("The ICC was 0.74.")
  }
if (!grepl("mean(sd(iccdata$T1),sd(iccdata$T2),sd(iccdata$T3))", .solution, fixed = TRUE)) {
    stop("The ICC was 0.74.")
  }
  # This function is defined in the testTemplate
success("Well done! We can now use this to calculate the minimal difference in the next 
exercise.")
}
