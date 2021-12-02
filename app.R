#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

source("check_packages.R")
source("read_tables.R")
source("functions.R")

# Define UI for application that draws a histogram
ui <- fluidPage(
    #CSS
    includeCSS("www/custom.css"),

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
               checkboxInput("well_connected", "Administrator well-connected", 
                             value = FALSE),
               actionButton("generate", "Generate Contracts")
        ),
        column(10, 
               tabsetPanel(
                   tabPanel("Available Contracts", 
                            htmlOutput("contract_output"),
                            HTML("<hr>"),
                            fluidRow(
                                column(5, includeMarkdown("text/negotiation.md")),
                                column(7, includeMarkdown("tables/supplemental_items.md"))
                            )), 
                   tabPanel("Instructions", 
                            includeMarkdown("text/instructions.md")), 
                   tabPanel("Definitions", 
                            includeMarkdown("text/definitions.md")),
                   tabPanel("Rationale", 
                            includeMarkdown("text/rationale.md"))
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
    
    well_connected <- eventReactive(input$generate, {
        input$well_connected
    })
    
    output$contract_output <- renderUI({ 
        contracts <- gen_all_contracts(hall(), 
                                       str_replace(rating(), "A\\*","AA"),
                                       well_connected())
        if(!is.data.frame(contracts)) {
            HTML("<h4 style='color:red;'>No contracts this month!</h4>")
        } else {
            contract_tab <- contracts %>% 
                kbl(contracts, format="html",
                    col.names=c("Employer","Mission Type","Pay Mult",
                                "Length","Command","Overhead","Salvage",
                                "Support","Transport","Advance","MRBC",
                                "Negotiator")) %>%
                kable_styling()
            HTML(contract_tab)
        }
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
