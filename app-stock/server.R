library(shiny)
library(quantmod)
source("helpers.R")
Sys.setlocale("LC_TIME", "English")

shinyServer(function(input,output){
        
        Stock_Price<-reactive({
        getSymbols(input$symb,src="yahoo",
                   from =input$dates[1],
                   to=input$dates[2],
                   auto.assign=FALSE)
        })
        
   
       output$plot<-renderPlot({
               chartSeries(Stock_Price(),theme=chartTheme("white"),
                           type="line",log.scale=input$log,TA=NULL)
       })

})

