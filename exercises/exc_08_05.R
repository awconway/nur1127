set.seed(34)
sample_size <- 100
leadership_sample <- rnorm(sample_size, mean = 5, sd = 6.5)

mean <- mean(leadership_sample)

SEM <- sd(leadership_sample)/sqrt(sample_size)

upperCI <- ___ + 2*___

lowerCI <- ___ - 2*___