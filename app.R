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
    #CSS
    includeCSS("custom.css"),

    # Application title
    titlePanel("Mercenary Contract Generator"),

    fluidRow(
        column(2, style = "background-color: #cb4154; padding: 15px; border-radius: 25px; color: white",
               selectInput("hall", h3("Select Hall"), 
                           choices = c("None","Questionable","Minor","Standard","Great"),
                           selected = "Standard"),
               selectInput("rating", h3("Select Rating"), 
                           choices = c("None","F","D","C","B","A","A*"),
                           selected = "C"),
               actionButton("generate", "Generate Contracts")
        ),
        column(10, 
               tabsetPanel(
                   tabPanel("Available Contracts", 
                            htmlOutput("contract_output")), 
                   tabPanel("Instructions", 
                            includeMarkdown("instructions.md")), 
                   tabPanel("Definitions", 
                            includeMarkdown("definitions.md"))
               )
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
        contracts <- gen_all_contracts(hall(), 
                                       str_replace(rating(), "A\\*","AA"))
        if(!is.data.frame(contracts)) {
            HTML("<h4 style='color:red;'>No contracts this month!</h4>")
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
