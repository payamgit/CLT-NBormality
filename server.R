# CLT-Normality V 0.1
# Payam Mokhtarian

##---------------------- Loading packages
library(shiny)

##---------------------- Server
shinyServer(function(input,output){
  
  # Output function
  output$distPlot <- reactivePlot(function()
  {
      Distribution <- rnorm(input$Observation)
      p <- qplot(Distribution, binwidth=0.1) + 
        geom_vline(xintercept=mean(Distribution), color=I("blue")) +
        theme_dpi()
      p <- p + coord_cartesian(xlim=c(-4,4)) +
        geom_vline(xintercept=median(Distribution), color=I("red"))
      print(p)
  })
  
})
