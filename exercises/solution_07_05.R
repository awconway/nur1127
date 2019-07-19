library(agree)
options(warn=-1)

psych::cohen.kappa(table(airway))

psych::cohen.kappa(table(quality))