library(rcanvas)
library(tidyverse)
library(glue)
library(httr)
set_canvas_token("11834~gqHvGv1Up2T1Ms8xbVsscLA59nHcj0TkRpsQ00qiCZXHtd6BDkNPm950pNTYe8ls")
set_canvas_domain("https://q.utoronto.ca")
list <- get_course_list()
test <- get_discussions_context(list$id[4])
context <- get_discussions_context(list$id[9])
discussion <- get_discussion_id(discussion_id = 63958, object_id = list$id[1])


# This returns usernames - view api call doesn't (works with returning 100 of the most recent messages, which is more than enough)

class_list <- c("Ashrafi, Ramzia", "Aspilla, Liberty", "Assouad, Caroline", "Campbell, Carla", "Campbell, Chantal", "Cheng, Jessica", "Cheung, Kung", "Dwyer, Hilary", "Ejaz Ul Hassan, Hibba", "Gallant, Anne", "Ghide, Hallelujah", "Goodfellow, Nicole", "Gould, Robert", "Gray, Danielle Patricia", "Huang, Zi", "Jerry-Egemba, Nma", "Lum, Bonnie", "MacDonald, Christa", "Malik, Kinza", "Manswell-Charles, Mellisa", "Mccready, Jessica", "Minnetyan, Elizabeth", "Muhunthan, Mathumesa", "Rams, Victoria", "Reinprecht, Jessica", "Robertson, Katharine", "Sidhu, Harpinder", "Sim, Soo-Jee", "Smither, Holly", "Streich, Jennifer", "Suarez, Rosalie", "Teng, Cynthia")

class_list <- sub("(^.*),\\s(.*$)","\\2 \\1", class_list)


course_id <- 113018
discussion_id <- 326843
args <- list(per_page = 200)
token <-  "11834~gqHvGv1Up2T1Ms8xbVsscLA59nHcj0TkRpsQ00qiCZXHtd6BDkNPm950pNTYe8ls"
resp <- httr::GET(glue::glue("https://q.utoronto.ca/api/v1/courses/", course_id, 
                             "/discussion_topics/", discussion_id, "/entries"),
                  httr::add_headers(Authorization = paste("Bearer", token)),
                  query = args)

resplist <- list(resp)
respbody <- resplist %>%
  purrr::map(httr::content, "text") %>%
  purrr::map(jsonlite::fromJSON, flatten = TRUE)

df <- respbody %>% purrr::flatten_df()

df <- df %>% filter(user_name != "Danielle Just") %>% filter(id != "Aaron Conway")


#number of replies to posts

reply_function <- function(x){
  df$recent_replies[[x]]$user_name
}

replies <- unlist(purrr::map(seq(1, nrow(df), by = 1), reply_function))

replies <- as.data.frame(replies)

replies <- replies %>% 
  rename(class_list = replies)



replies <- replies %>%
  group_by(class_list) %>% 
  summarise(replies=n()) %>% 
  filter(class_list != "Aaron Conway") %>% 
  filter(class_list != "Danielle Just")


# replies to messages (but only up to 10 replies to original messages)

data <- data.frame(class_list)

data <- data %>% 
  mutate(initial_post_submitted = class_list %in% df$user_name)

data <- data %>% full_join(replies) %>%
  mutate(replies = replace_na(replies, 0))

####Adding another week####

discussion_id <- 344119
args <- list(per_page = 200)
token <-  "11834~gqHvGv1Up2T1Ms8xbVsscLA59nHcj0TkRpsQ00qiCZXHtd6BDkNPm950pNTYe8ls"
resp <- httr::GET(glue::glue("https://q.utoronto.ca/api/v1/courses/", course_id, 
                             "/discussion_topics/", discussion_id, "/entries"),
                  httr::add_headers(Authorization = paste("Bearer", token)),
                  query = args)

resplist <- list(resp)
respbody <- resplist %>%
  purrr::map(httr::content, "text") %>%
  purrr::map(jsonlite::fromJSON, flatten = TRUE)

df <- respbody %>% purrr::flatten_df()

df <- df %>% filter(user_name != "Danielle Just") %>% filter(id != "Aaron Conway")


#number of replies to posts

reply_function <- function(x){
  df$recent_replies[[x]]$user_name
}

replies <- unlist(purrr::map(seq(1, nrow(df), by = 1), reply_function))

replies <- as.data.frame(replies)

replies <- replies %>% 
  rename(class_list = replies)



replies <- replies %>%
  group_by(class_list) %>% 
  summarise(replies=n()) %>% 
  filter(class_list != "Aaron Conway") %>% 
  filter(class_list != "Danielle Just")


# replies to messages (but only up to 10 replies to original messages)

data2 <- data.frame(class_list)

data2 <- data2 %>% 
  mutate(initial_post_submitted = class_list %in% df$user_name)

data2 <- data2 %>% full_join(replies)


total <- data2 %>% full_join(data)



week_function <- function(x){
  
  class_list <- c("Ashrafi, Ramzia", "Aspilla, Liberty", "Assouad, Caroline", "Campbell, Carla", "Campbell, Chantal", "Cheng, Jessica", "Cheung, Kung", "Dwyer, Hilary", "Ejaz Ul Hassan, Hibba", "Gallant, Anne", "Ghide, Hallelujah", "Goodfellow, Nicole", "Gould, Robert", "Gray, Danielle Patricia", "Huang, Zi", "Jerry-Egemba, Nma", "Lum, Bonnie", "MacDonald, Christa", "Malik, Kinza", "Manswell-Charles, Mellisa", "Mccready, Jessica", "Minnetyan, Elizabeth", "Muhunthan, Mathumesa", "Rams, Victoria", "Reinprecht, Jessica", "Robertson, Katharine", "Sidhu, Harpinder", "Sim, Soo-Jee", "Smither, Holly", "Streich, Jennifer", "Suarez, Rosalie", "Teng, Cynthia")
  
  class_list <- sub("(^.*),\\s(.*$)","\\2 \\1", class_list)
  
  
  course_id <- 113018
  discussion_id <- x
  args <- list(per_page = 200)
  token <-  "11834~gqHvGv1Up2T1Ms8xbVsscLA59nHcj0TkRpsQ00qiCZXHtd6BDkNPm950pNTYe8ls"
  resp <- httr::GET(glue::glue("https://q.utoronto.ca/api/v1/courses/", course_id, 
                               "/discussion_topics/", discussion_id, "/entries"),
                    httr::add_headers(Authorization = paste("Bearer", token)),
                    query = args)
  
  resplist <- list(resp)
  respbody <- resplist %>%
    purrr::map(httr::content, "text") %>%
    purrr::map(jsonlite::fromJSON, flatten = TRUE)
  
  df <- respbody %>% purrr::flatten_df()
  
  df <- df %>% filter(user_name != "Danielle Just") %>% filter(id != "Aaron Conway")
  #number of replies to posts
  
  reply_function <- function(x){
    df$recent_replies[[x]]$user_name
  }
  
  replies <- unlist(purrr::map(seq(1, nrow(df), by = 1), reply_function))
  
  replies <- as.data.frame(replies)
  
  replies <- replies %>% 
    rename(class_list = replies)
  
  
  
  replies <- replies %>%
    group_by(class_list) %>% 
    summarise(replies=n()) %>% 
    filter(class_list != "Aaron Conway") %>% 
    filter(class_list != "Danielle Just")
  
  
  # replies to messages (but only up to 10 replies to original messages)
  
  data <- data.frame(class_list)
  
  data <- data %>% 
    mutate(initial_post_submitted = class_list %in% df$user_name)
  
  data <- data %>% full_join(replies) %>%   mutate(replies = replace_na(replies, 0))
  
}
week_2_end <- as.Date("2019-09-24")
week_3_end <- as.Date("2019-10-01")

selection <- c(326843,344119)
if (Sys.Date() < week_2_end){
  selection[1] %>% 
    set_names() %>% 
    purrr::map_df(., week_function, .id = "Week")  %>%
    mutate(Week = recode(Week,
                         "326843" = "Week 1"))
} else if(Sys.Date() < week_3_end & Sys.Date() > week_2_end){
selection[1:2] %>% 
set_names() %>% 
purrr::map_df(., week_function, .id = "Week")  %>%
  mutate(Week = recode(Week,
                       "326843" = "Week 1",
                       "344119" = "Week 2"))
}
  
total %>% 
  filter(initial_post_submitted==FALSE)




####################Updating discussions#############


# Updates the topic of the discussion
update_discussion_id(discussion_id = 320618, object_id = list$id[1], message = "This is an update to the discussion board")

# Post a reply 100 TIMES
message  <- list(message="Updated reply")
replicate(100, httr::POST("https://q.utoronto.ca/api/v1/courses/86697/discussion_topics/320618/entries", 
                  httr::add_headers(Authorization = paste("Bearer", token)),
                  query = message))

