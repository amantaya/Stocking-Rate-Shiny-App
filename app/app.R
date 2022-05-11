library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  passwordInput("password", "What's your password?"),
  textAreaInput("story", "Tell me about yourself", rows = 3),
  textOutput("name")
)

server <- function(input, output, session) {
  output$name <- renderPrint({
    name <- input$name
    paste0("My name is ", name)
  })
}

shinyApp(ui, server)
