library(shiny)

shinyUI(fluidPage(
        titlePanel("Stock Price Chart"),
        
        sidebarLayout(
                sidebarPanel(
                        strong("Type a US stock ticker to check its  price"),
                        br(),
                        
                        br(),
                        
                        
                        textInput("symb", label="Symbol", value="GS"),
                        
                        dateRangeInput("dates", 
                                       label="Date range",
                                       start = "2014-01-01", 
                                       end = as.character(Sys.Date())),
                        
                       
                        br(),              
                        br(),
                        br(),
                        checkboxInput("log", "Plot y axis on log scale", 
                                      value = FALSE),
                br(),    
                br(),    
        
                img(src="man_searching.png", height = 80, width = 80)),                   
                mainPanel(plotOutput("plot"))
        )
))