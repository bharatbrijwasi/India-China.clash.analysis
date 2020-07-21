library(shiny)
library(shinydashboard)
dashboardPage(
    dashboardHeader(disable = TRUE),
    dashboardSidebar(disable = TRUE),
    dashboardBody(
        fluidRow(
            infoBoxOutput("responseCount"),
            infoBoxOutput("uniqueRegion "),
            infoBoxOutput("medianAge")
        ),
        tabBox(title = "first Box",
               id = "tabset0", 
               height = "550",
               width = "550"
        )
    ))