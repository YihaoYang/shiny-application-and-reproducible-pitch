#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
library(ggplot2)
data("mtcars")
#df <- mtcars %>%
 #   mutate(am=ifelse(am==0,"automatic","manual")) %>%
  #  mutate(vs=factor(vs),am=factor(am),gear=factor(gear)) 
#e(vs=factor(vs),am=factor(am),gear=factor(gear)) 
# begin shiny server
shinyServer(function(input, output) {
    output$regplot <- renderPlot(
        {
            ggplot(data=mtcars,aes(mtcars[[input$choice]],mpg))+geom_point()+geom_smooth(method='lm',aes(group=1))+xlab(input$choice)
        }
    )
}
)