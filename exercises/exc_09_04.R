library(nur1027functions)
library(tidyverse)

model1 <- temp_logistic %>% 
  glm(formula = Hypothermic ~ BMI + Propofol_used, 
      family = "binomial")

model2 <- temp_logistic %>% 
  glm(formula = Hypothermic ~ BMI + Propofol_used + ROOM_TEMP, 
      family = "binomial")

# add as many other variables as you want
model3 <- temp_logistic %>% 
  glm(formula = Hypothermic ~ BMI + Propofol_used + ROOM_TEMP + ___, 
      family = "binomial")


stargazer2(list(model1, model2, model3))
