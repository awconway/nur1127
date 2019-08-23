Score <- c(113, 146.5, 132, 70.5, 121, 55)
Nurse <- c("Nurse 1", "Nurse 2", "Nurse 3", "Me", "Nurse 4", "Nurse 5")
dataset <- data.frame(Score, Nurse)
agree::plot_burnout(x = Nurse, y=Score)
