shinyUI(pageWithSidebar(
        headerPanel("Social Media Sentiment of Disney Parks"),
        sidebarPanel(
                radioButtons("source", "Source:", c("twitter", "disboards")),
                radioButtons("park", "Park:", c("Magic Kingdom", "Epcot", "Hollywood Studios", "Animal Kingdom")),
                p("This website displays social media sentiment for the 4 Disney parks in Florida for a seven day period. Sentiment is 
                  displayed as an index between -0.1 and 0.1, with positive values expressing positive sentiment and negative
                  values expressing negative sentiment. Sentiment is estimated using the Stanford open source sentiment algorithm,
                  The user simply selects the desired data source (twitter or disboards), and the desired park. Sentiment for a 7 day
                  period is then displayed.")
        ),
        mainPanel(
                plotOutput('sentimentChart')
        )
))