suppressMessages(library(tidyverse))
library(nur1027functions)
library(infer)
options(warn = -1)


# Calculate the difference in mean quality of life scores in the sample
sample_mean_diff <- data %>% 
  specify(GH ~ depressed) %>%
  calculate(stat = "diff in means", 
            order = c("depressed", "not depressed"))

glue::glue("The mean difference in the sample was ", 
           round(sample_mean_diff$stat, 2))


# Create and visualise the null distribution
null_distribution <- data %>% 
  specify(GH ~ depressed) %>%
  hypothesize(null = "independence") %>%
  generate(reps = 1000, type = "permute") %>%
  calculate(stat = "diff in means", 
            order = c("depressed", "not depressed"))

null_distribution %>%
  ggplot2::ggplot(aes(stat)) +
  geom_dotplot(binwidth=0.75, method='histodot', colour = "white", 
               fill = "blue", alpha=0.3) +
  scale_y_continuous(limits = c(0,1))+
  scale_x_continuous(limits = c(-25,25))+
  theme_minimal()+
  labs(x = "Difference in mean between groups", y = NULL, title = "")+
  geom_vline(xintercept = 0, size = 1, color = "black")+
  coord_cartesian(clip="off") +
  geom_text(x = -12, y = 0.9, label = "Lower score in depressed group",
            check_overlap = TRUE, hjust = "center") +
  geom_text(x = 12, y = 0.9, inherit.aes = FALSE, 
            label = "Higher score in depressed group",
            check_overlap = TRUE, hjust = "center")+
  geom_vline(xintercept = sample_mean_diff$stat, size = 1, 
             color = "red", linetype = "dashed" )+
  annotate("rect", xmin = -sample_mean_diff$stat, xmax = Inf, 
           ymin = 0, ymax = Inf,
           alpha = .2, fill = "red") +
  annotate("rect", xmin = sample_mean_diff$stat, xmax = -Inf, 
           ymin = 0, ymax = Inf,
           alpha = .2, fill = "red")

# Calculate the p-value

pvalue <- null_distribution %>% 
  get_p_value(obs_stat = sample_mean_diff, direction = "two_sided")

glue::glue("The p-value for the mean difference in our sample was ", 
           pvalue$p_value)
