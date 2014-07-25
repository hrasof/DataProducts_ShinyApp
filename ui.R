library(shiny)

# library(grid)
# library(vcd)
# data(SexualFun)

# Define the overall UI
shinyUI(
        
        # Use a fluid Bootstrap layout
        fluidPage(
                
                # Give the page a title
                titlePanel("Summary of *ex is fun for me and my partner"),
                
                # Generate a row with a sidebar
                sidebarLayout(
                        
                        # Define the sidebar with one input
                        sidebarPanel(
                                selectInput("Gender", "Select Gender:",
                                            choices= c("Wife", "Husband")),
                               helpText("The following table summarizes responses to the questionnaire item Sex is fun for me and my partner (a) never or occasio
                                nally, (b) fairly often, (c) very often, (d) almost always, for 91 married couples"),
                                hr(),
                                helpText("Source: http://msor.victoria.ac.nz/foswiki/pub/Courses/STAT292_2014T1/WebHome/n9.pdf")
                     ),
                        
                        # Create a spot for the barplot
                        mainPanel(
                                plotOutput("txPlot")
                      )
                        
                )
        )
)