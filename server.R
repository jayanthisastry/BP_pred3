hyperTension <- function(systolic, diastolic) systolic / diastolic

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$systolic})
    output$inputValue2 <- renderPrint({input$diastolic})
    output$prediction <- renderPrint({hyperTension(input$systolic, input$diastolic)})
  }
)