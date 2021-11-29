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
library(knitr)
library(kableExtra)
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
                        selected = "C"),
            actionButton("generate", "Generate Contracts")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            htmlOutput("contract_output")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    hall <- eventReactive(input$generate, {
        input$hall
    })
    
    rating <- eventReactive(input$generate, {
        input$rating
    })
    
    output$contract_output <- renderUI({ 
        contracts <- gen_all_contracts(hall(), rating())
        if(is.na(contracts)) {
            HTML("<center><h2>No contracts this month!</h2></center>")
        } else {
            contract_tab <- contracts %>% 
                select(!(.n)) %>%
                kbl(contracts, format="html",
                    col.names=c("Employer","Mission Type","Pay Multiplier",
                                "Mission Length","Command","Overhead","Salvage",
                                "Support","Transport")) %>%
                kable_styling()
            HTML(contract_tab)
        }
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
