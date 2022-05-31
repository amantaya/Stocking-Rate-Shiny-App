library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?", placeholder = "My Name Is..."),
  passwordInput("password", "What's your password?"),
  textAreaInput("story", "Tell me about yourself", rows = 3),
  textOutput("name"),
  textOutput("password"),
  textOutput("story")
)

server <- function(input, output, session) {
  output$name <- renderPrint({
    name <- input$name
    paste0("My name is ", name)
  })
  output$password <- renderPrint({
    password <- input$password
    password
  })
  output$story <- renderPrint({
    story <- input$story
    story
  })
}

shinyApp(ui, server)
