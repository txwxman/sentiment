library(UsingR)
data(galton)
data_twitter <- read.csv("twitter.csv")
data_disboards <- read.csv("disboards.csv")
shinyServer(
        function(input, output) {
                output$sentimentChart <- renderPlot({
                        if(input$source == "disboards") {
                                data <- data_disboards
                                txtSource <- "Disboards.com"
                        } else {
                                data <- data_twitter
                                txtSource <- "Twitter"
                        }
                        if(input$park == "Magic Kingdom") {
                        plot(data$Date, data$MK, type="s", 
                             main= paste(txtSource, "Sentiment for Magic Kingdom"), xlab="Date", ylab="Sentiment")}
                        if(input$park == "Epcot") {
                        plot(data$Date, data$EP, type="s", 
                                main= paste(txtSource, "Sentiment for Epcot"), xlab="Date", ylab="Sentiment")}   
                        if(input$park == "Hollywood Studios") {
                                plot(data$Date, data$HS, type="s", 
                                     main= paste(txtSource, "Sentiment for Hollywood Studios"), xlab="Date", ylab="Sentiment")}
                        if(input$park == "Animal Kingdom") {
                                plot(data$Date, data$AK, type="s", 
                                     main= paste(txtSource, "Sentiment for Animal Kingdom"), xlab="Date", ylab="Sentiment")} 
                })
        }
)