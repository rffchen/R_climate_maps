#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyWidgets)
library(stringr)
              
lst_files <- str_remove(
                        list.files(path="./www", 
                            pattern=NULL, 
                            all.files=FALSE,
                            full.names=FALSE),
                        ".jpeg")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title 
    titlePanel("Teste Mapa"),

        # Show a plot of the generated distribution
        mainPanel(
                  sliderTextInput(
                      inputId = "IDFIG",
                      animate = TRUE,
                      label = "Escolha a data", 
                      choices = lst_files,
                      grid=TRUE
                  ),
            imageOutput("plop", 
                        width = "40%", 
                        height = "100",
                        inline = FALSE)
        )
    )



# Define server logic required to draw a histogram
server <- function(input, output) {


    
    output$plop <- renderImage({
        
        endereco <- sprintf("www/%s.jpeg",input$IDFIG)
        list(src =endereco)

        
        })
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)
