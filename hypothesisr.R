library(tidyverse)
library(hypothesisr)
test <- hs_search(uri = "https://nur1027-fall-2019.netlify.com/")
## Probably better to match in the search because there is a limit of 200 results
chapter1_any <- hs_search(uri = "https://nur1027-fall-2019.netlify.com/", any = "chapter1")
chapter1 <- test %>% 
filter(stringr::str_detect(uri, 'chapter1'))

