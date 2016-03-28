#### SERVER.R ####

library(shiny)

shinyServer(function(input, output) {
  
  x <- reactive({
    ((input$MA * 0.435) + (input$SPC * 1.422) + (input$VA * 2.3)) - 12.244
  })

  output$text1 <- renderText({
    ifelse(x() < 0, "Female", "Male")
  })

})
