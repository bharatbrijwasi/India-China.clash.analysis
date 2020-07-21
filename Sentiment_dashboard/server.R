library(shiny)
library(shinydashboard)
library(googlesheets)

gs_auth()
for_gs <- gs_title("surveyData")
for_gs <- gs_key("1ej-qyqT2twLReh8dtWY26FlkHgz49QvYZb6cdTFIqy8")
data <- as.data.frame(gs_read(for_gs))
data$`City & State` <- as.factor(data$`City & State`)

shinyServer(function(input,output){
    
    output$responseCount <- renderInfoBox({
        infoBox(
            "Total Response", nrow(data), icon = icon("barplot"),
            color = "purple")})
    
    output$`uniqueRegion ` <- renderInfoBox({
        infoBox(
            "City Include in Survey",nlevels(data$`City & State`) , icon = icon("thumbs-up", lib = "glyphicon"),
            color = "yellow")})
    
    output$medianAge <- renderInfoBox({
        infoBox(
            "Median age of public in Suyvey",20, icon = icon("street-view"),
            color = "purple")})
    
    
})