test <- function() {
  # Here we can either check objects created in the solution code, or the
  # string value of the solution, available as .solution. See the testTemplate
  # in the meta.json for details.
  if (result < 50) {
    stop("Are you searching for the correct term?")
  }
  # This function is defined in the testTemplate
  success("That was too easy! Let's try something a little more challenging.")
}