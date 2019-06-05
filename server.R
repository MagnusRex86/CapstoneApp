#library(shiny)
#library(rsconnect)
suppressPackageStartupMessages(c(
  library(shinythemes),
  library(shiny),
  library(tm),
  library(stringr),
  library(markdown),
  library(stylo)))


shinyServer(function(input, output, session) {
  
  resultList <- reactive({
    as.character(scoreNgrams(input$userInput)$nextword)[1:5]
  })
  output$enteredWords <- renderText({ input$userInput }, quoted = FALSE)
  
  output$guess <- renderTable({
    outputTable <- data.frame(resultList())
    outputTable$Order = (1:5)
    outputTable <- outputTable[c(2,1)]
    colnames(outputTable) <- c("Order", "Prediction")
    outputTable
  }, 
  caption=paste("Model: Stupid Backoff Model using Ngrams"),
  width = '400px',
  spacing = 'l',
  hover = TRUE,
  align = "c",
  striped = TRUE
  
  )
  
})