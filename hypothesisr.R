library(tidyverse)
library(hypothesisr)
test <- hs_search_all(uri = "https://www.aaronconway.info")
chapter1 <- test %>% 
filter(stringr::str_detect(uri, 'chapter1') )