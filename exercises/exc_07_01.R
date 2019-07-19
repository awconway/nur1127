nominal <- c("High", "Low", "High", "Low", "Medium")

rank <- factor(nominal, order = TRUE, 
       levels = c("Low", "Medium", "High"))

numeric <- as.numeric(rank)

mean(___)
