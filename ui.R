
  library(shinythemes)
  ##library(shiny)

shinyUI(fluidPage(
  theme = shinytheme("cerulean"),
  titlePanel("Word Prediction App"),
  
  tabsetPanel(type='tab',
              tabPanel("App Main Page",
                       
                       tags$head(includeScript("./js/ga-shinyapps-io.js")),
                       
                       sidebarLayout(
                         
                         sidebarPanel(
                          tags$div(textInput('userInput',label="Input your phrase here:",value="Hello World"),
                                   tags$span(style="color:#3377ff",("Only English words are supported.")),
                           br(),
                           tags$hr(),
                           h3("Note:",br(),
                                    "The following words will appear as you type."),
                           
                           align="center")
                         ),
                       mainPanel(
                         h4("Top 5 predictions:"),
                         tableOutput('guess')
                       )
                       )
              ),
              
              tabPanel("About",
                       h3("Datascience Capstone Project"),
                       h4("Dewald Olivier"),
                       h5(a(p("CapstoneApp Slide Deck"),href=,"http://rpubs.com/MagnusRex/CapstoneAppSD")
                       h5("For more information regarding the processing and exploratory analysis of the dataset, please refer to my milestone document."),
                       a(p("LINK"), href="http://rpubs.com/MagnusRex/DSCapstone")
              )
  ),
  hr(),
  h4("Made by Dewald Olivier",
     a(p("Click here to for the Github Repo."), 
       href="http://github.com/magnusrex86/CapstoneApp")
  )
))
