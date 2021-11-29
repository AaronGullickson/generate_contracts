#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(read.so)
library(tidyr)
library(stringr)
source("read_tables.R")
source("functions.R")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Mercenary Contract Generator"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            selectInput("hall", h3("Select Hall"), 
                        choices = c("None","Questionable","Minor","Standard","Great"),
                        selected = "Standard"),
            selectInput("rating", h3("Select Rating"), 
                        choices = c("None","F","D","C","B","A","A*"),
                        selected = "C")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            textOutput("contract_output")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$contract_output <- renderPrint({ 
        gen_all_contracts(input$hall, input$rating)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
