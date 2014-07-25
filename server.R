#install.packages("vcd")
library(grid)
library(vcd)
data(SexualFun)

#install.packages("ggplot2")
library(ggplot2)

library(shiny)

sf <- as.data.frame(SexualFun)
sf$Gender <- NA
sf$Gender <- c("Wife","Husband") 

shinyServer(function(input, output) {
        
        # Fill in the spot we created for a plot
        output$txPlot <- renderPlot({
                if(input$Gender == "Wife") {
                        qplot(Wife, data=sf, weight=Freq) + facet_grid(facets=.~Husband, labeller="label_both")
                } else {
                        qplot(Husband, data=sf, weight=Freq) + facet_grid(facets=.~Wife, labeller="label_both")
                }
        })
})