set.seed(34)

# Our sample

sample_size <- 50
mean <- 5
sd <- 4

# Calculate standard error

SEM <- sd/sqrt(sample_size)

# Calculate confidence intervals

upperCI <- ___ + 2*___

lowerCI <- ___ - 2*___

glue::glue("The lower confidence interval is ", round(lowerCI, 1))

glue::glue("The upper confidence interval is ", round(upperCI, 1))