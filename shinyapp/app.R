library(shiny)
ui <- fluidPage(
  titlePanel("Z-value to P-value"),
  numericInput("z", "standard normal statistic (z-value)",value=0),
  textOutput("p")
)
server <- function(input, output) {
  output$p <- renderText({
    paste("p = ", 1-pnorm(input$z))
  })
}

shinyApp(ui = ui, server = server)