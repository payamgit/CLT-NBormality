# CLT-Normality V 0.1
# Payam Mokhtarian

##---------------------- Loading packages
library(shiny)
library(ggplot2)
library(eeptools)

##---------------------- User interface
shinyUI(pageWithSidebar(
  
  # Title
  headerPanel("Central Limit Theorem - Normality"),
  
  # Slide panel
  sidebarPanel
  (
    sliderInput("Observation","Number of observations:",
                min=0,max=10000,value=100)
  ),
  
  # Histrogram plot
  mainPanel
  (
    plotOutput("distPlot")
  )
  
))
