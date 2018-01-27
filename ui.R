library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Mean mpg By mtcar"),
        
        ##Sidebar panel with a slider
        
        sidebarPanel(
                sliderInput('mu', 'Mean MPG',value = 25, min = 4, max = 35, step = 1),
                h3("Move Slider")
              
                
        ),
        
        ##main panel text and graphs
        
        mainPanel(
                 textOutput('text1'),
                 p('The is a histogram of the mtcar data'),
                 plotOutput('newHist')
                 )
))