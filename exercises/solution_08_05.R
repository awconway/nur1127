set.seed(34)
sample_size <- 50
leadership_sample <- rnorm(sample_size, mean = 5, sd = 6.5)

mean <- mean(leadership_sample)

SEM <- sd(leadership_sample)/sqrt(sample_size)

upperCI <- mean + 2*SEM

lowerCI <- mean - 2*SEM