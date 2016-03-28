#### UI.R ####

library(shiny)


shinyUI(fluidPage(
  titlePanel("Klales et al. 2012 Sex Estimation"),
  
  mainPanel(
    
  fluidRow(
    column(10,
        h3("SPC"), img(src = "SPC.png")
    ),
    column(2,
        numericInput("SPC", label = h3("SPC Score"), value = NA))
  ),
  
  fluidRow(
    column(10,
        h3("MA"), img(src = "MIPR.png")),
    column(2,
        numericInput("MA", label = h3("MA Score"), value = NA))
  ),
  
  fluidRow(
    column(10,
        h3("VA"), img(src = "VA.png")),
    column(2,
        numericInput("VA", label = h3("VA Score"), value = NA))
  ),
  
  fluidRow(
    column(12, 
        textOutput("text1"))
  )

  )
))
  