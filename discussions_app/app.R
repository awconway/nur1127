library(shiny)
library(shinydashboard)
library(tidyverse)
library(glue)
library(httr)



week <- c("Week 1", "Week 2", "Week 3", "Week 4", "Week 5", "Week 7",
          "Week 8", "Week 10", "Week 11")

ui <- fluidPage(
  
  # Application title
  titlePanel("Discussion post tracking"),
  
  # Sidebar with a slider inputs for FAW and laundry costs as well as currency
  sidebarLayout(
    sidebarPanel(
      radioButtons(inputId = "week", label = "Select the week",
                  choices=week, selected = week[1]
      )
    ),
    
    # Show a plot of the net benefit
    mainPanel(
      tabBox(width = NULL,
             title = "",
             # The id lets us use input$tabset1 on the server to find the current tab
             id = "tabset1", height = "600px",
             tabPanel("Weekly", dataTableOutput(outputId ="table")),
             tabPanel("Total", dataTableOutput(outputId ="total_table"))
      )
      
    )
  )
)

server <- function(input, output) {
  
  output$table <- renderDataTable({
    
    
    datasetInput <- reactive({
      switch(input$week,
             "Week 1" = 326843,
             "Week 2" = 344119,
             "Week 3" = 344125,
             "Week 4" = 344130,
             "Week 5" = 344134,
             "Week 7" = 344138,
             "Week 8" = 344139,
             "Week 10" = 344157,
             "Week 11" = 344195
      )
    })
    
    class_list <- c("Ashrafi, Ramzia", "Aspilla, Liberty", "Assouad, Caroline", "Campbell, Carla", "Campbell, Chantal", "Cheng, Jessica", "Cheung, Kung", "Dwyer, Hilary", "Ejaz Ul Hassan, Hibba", "Gallant, Anne", "Ghide, Hallelujah", "Goodfellow, Nicole", "Gould, Robert", "Gray, Danielle Patricia", "Huang, Zi", "Jerry-Egemba, Nma", "Lum, Bonnie", "MacDonald, Christa", "Malik, Kinza", "Manswell-Charles, Mellisa", "Mccready, Jessica", "Minnetyan, Elizabeth", "Muhunthan, Mathumesa", "Rams, Victoria", "Reinprecht, Jessica", "Robertson, Katharine", "Sidhu, Harpinder", "Sim, Soo-Jee", "Smither, Holly", "Streich, Jennifer", "Suarez, Rosalie", "Teng, Cynthia")
    
    class_list <- sub("(^.*),\\s(.*$)","\\2 \\1", class_list)
    
    
    course_id <- 113018
    
    discussion_id <- datasetInput()
    
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
    
    
  })
  
  output$total_table <- renderDataTable({
    
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
    week_4_end <- as.Date("2019-10-08")
    week_5_end <- as.Date("2019-10-15")
    week_7_end <- as.Date("2019-10-29")
    week_8_end <- as.Date("2019-11-12")
    week_10_end <- as.Date("2019-11-19")
    week_11_end <- as.Date("2019-11-26")
    
    selection <- c(326843,344119, 344125, 344130, 344134, 344138, 344139, 344157,
                   344195)
    
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
    } else if (Sys.Date() < week_4_end & Sys.Date() > week_3_end){
      selection[1:3] %>% 
        set_names() %>% 
        purrr::map_df(., week_function, .id = "Week")  %>%
        mutate(Week = recode(Week,
                             "326843" = "Week 1",
                             "344119" = "Week 2",
                             "344125" = "Week 3"))
    } else  if (Sys.Date() < week_5_end & Sys.Date() > week_4_end){
      selection[1:4] %>% 
        set_names() %>% 
        purrr::map_df(., week_function, .id = "Week")  %>%
        mutate(Week = recode(Week,
                             "326843" = "Week 1",
                             "344119" = "Week 2",
                             "344125" = "Week 3",
                             "344130" = "Week 4"))
    } else  if (Sys.Date() < week_7_end & Sys.Date() > week_5_end){
      selection[1:5] %>% 
        set_names() %>% 
        purrr::map_df(., week_function, .id = "Week")  %>%
        mutate(Week = recode(Week,
                             "326843" = "Week 1",
                             "344119" = "Week 2",
                             "344125" = "Week 3",
                             "344130" = "Week 4",
                             "344134" = "Week 5"))
    } else  if (Sys.Date() < week_8_end & Sys.Date() > week_7_end){
      selection[1:6] %>% 
        set_names() %>% 
        purrr::map_df(., week_function, .id = "Week")  %>%
        mutate(Week = recode(Week,
                             "326843" = "Week 1",
                             "344119" = "Week 2",
                             "344125" = "Week 3",
                             "344130" = "Week 4",
                             "344134" = "Week 5",
                             "344138" = "Week 7"))
    } else  if (Sys.Date() < week_10_end & Sys.Date() > week_8_end){
      selection[1:7] %>% 
        set_names() %>% 
        purrr::map_df(., week_function, .id = "Week")  %>%
        mutate(Week = recode(Week,
                             "326843" = "Week 1",
                             "344119" = "Week 2",
                             "344125" = "Week 3",
                             "344130" = "Week 4",
                             "344134" = "Week 5",
                             "344138" = "Week 7",
                             "344139" = "Week 8"))
    } else  if (Sys.Date() < week_11_end & Sys.Date() > week_10_end){
      selection[1:8] %>% 
        set_names() %>% 
        purrr::map_df(., week_function, .id = "Week")  %>%
        mutate(Week = recode(Week,
                             "326843" = "Week 1",
                             "344119" = "Week 2",
                             "344125" = "Week 3",
                             "344130" = "Week 4",
                             "344134" = "Week 5",
                             "344138" = "Week 7",
                             "344139" = "Week 8",
                             "344157" = "Week 10"))
    } else {
       selection[1:9] %>% 
       selection %>% 
      set_names() %>% 
      purrr::map_df(., week_function, .id = "Week") %>% 
      mutate(Week = recode(Week,
                           "326843" = "Week 1",
                           "344119" = "Week 2",
                           "344125" = "Week 3",
                           "344130" = "Week 4",
                           "344134" = "Week 5",
                           "344138" = "Week 7",
                           "344139" = "Week 8",
                           "344157" = "Week 10",
                           "344195" = "Week 11"
                           ))
    
     }

  })
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)