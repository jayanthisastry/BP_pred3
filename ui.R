shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BP_Prediction"),

    sidebarPanel(
      numericInput('systolic', 'systolic mm Hg', 120, min=100, max=140, step=2),
      submitButton('Submit'),
      numericInput('diastolic', 'diastolic mm Hg', 80, min=60, max=80, step=2),
      submitButton('Submit')
    ),
    mainPanel(
        h3('Results of BP prediction'),
        h4('You entered Systolic value'),
        verbatimTextOutput("inputValue1"),
        h4('You entered Diastolic value'),
        verbatimTextOutput("inputValue2"),
        h4('which resulted in a prediction of '),
        verbatimTextOutput("prediction")
    )
  )
)
