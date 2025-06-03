library(shiny)
library(SparkR)
sparkR.session()

ui <- fluidPage(
  mainPanel(
    textOutput("value")
  )
)

server <- function(input, output) {
  output$value <- renderText("Hello World! :)")
}

shinyApp(ui = ui, server = server)