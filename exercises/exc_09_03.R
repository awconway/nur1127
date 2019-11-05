library(nur1027functions)
suppressMessages(library(tidyverse))

model1 <- temp_logistic %>% 
  glm(formula = Hypothermic ~ BMI + Propofol_used, 
      family = "binomial")

model2 <- temp_logistic %>% 
  glm(formula = Hypothermic ~ BMI + Propofol_used + ___, 
      family = "binomial")


stargazer2(list(model1, model2))
