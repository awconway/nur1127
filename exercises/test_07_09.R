test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (!grepl("0.25", .solution, fixed = TRUE)) {
    stop("The SEM was 0.258.")
  }
if (!grepl("measurements <- 3", .solution, fixed = TRUE)) {
    stop("There were 3 repeated measuements of temperature taken for each participant")
  }
  # This function is defined in the testTemplate
success("Well done! But wow. The minimal difference is 0.87°C! That means that 
repeated measurements of temperature taken by infrared tympanic thermometers over 
time are required to be at least 0.87°C higher or lower than the previous reading 
for the change to be considered real (i.e. not as a result of random variation or 
measurement error).")
}
