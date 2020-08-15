library(shiny)

# Define UI for application that draws a histogram
shinyUI(navbarPage("Shiny App",
                   # create first tab
                   tabPanel("Documentation",
                            # paragraph and bold text
                            p("The experiment is based on", strong("mtcars"), "dataset. According to R documentation,
                              It is a data frame with 32 observations on 11 (numeric) variables:"),
                            tags$ol(
                                tags$li("mpg:   Miles/(US) gallon"),
                                tags$li("cyl:   Number of cylinders"),
                                tags$li("disp:	Displacement (cu.in.)"),
                                tags$li("hp:	Gross horsepower"),
                                tags$li("drat:	Rear axle ratio"),
                                tags$li("wt:	Weight (1000 lbs)"),
                                tags$li("qsec:	1/4 mile time"),
                                tags$li("vs:	Engine (0 = V-shaped, 1 = straight)"),
                                tags$li("am:	Transmission (0 = automatic, 1 = manual)"),
                                tags$li("gear:	Number of forward gears"),
                                tags$li("carb:	Number of carburetors")
                            ),
                            p("We are going to explore some simple linear regression models with this dataset!"),
                            p("In the regression experiments tab, you can choose a single predictor variable with response variable set to be mpg.")
                            ),
                   # second tab for regression experiment
                   tabPanel("Regression Experiments",
                            fluidRow(
                                    # sliders
                                    column(4, radioButtons(inputId="choice", 
                                                           label="Which parameter would you like use as the predictor variable?", 
                                                           choices=c("cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb"),
                                                           selected = "am")
                                           ),
                                    column(8,plotOutput("regplot")),
                                    style = "opacity: 0.92; z-index: 100;"
                                )
                            )
                   )
)
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    