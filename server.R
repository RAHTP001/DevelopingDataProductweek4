
library(shiny)

library(UsingR)
data(mtcars)
shinyServer(
        function(input, output) {
                
        cardata<-mtcars
                
                ##histrogram of actual data
                
        output$newHist <- renderPlot({
                        
         hist(cardata$mpg, xlab='mpg', col='green',main='Histogram of  mtcar Data', breaks=20, xlim=c(5,40), ylim=c(0,8))
             mu <- input$mu
                lines(c(mu, mu), c(0, 200),col="black",lwd=4)
                       text(25, 5.5, paste("mean = ", mu))
                        
                         })
        
                 }
)