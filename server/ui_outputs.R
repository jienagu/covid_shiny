
# either show default text or click based
output$total_cases_ui <- renderUI({
  if (is.null(input$mymap_click)) {
    htmlOutput("text_default")
  } else {
    htmlOutput("total_cases")
  }
})


# either show default text or click based
output$cases_all_ui <- renderUI({
  if (is.null(input$mymap_click)) {
    htmlOutput("all_default")
  } else {
    htmlOutput("all_country")
  }
})

# either show default text or click based
output$cases_death_ui <- renderUI({
  b <- get_date()
  if (is.null(input$mymap_click)) {
    htmlOutput("death_default")
  } else {
    htmlOutput("death_country")
  }
})


# dateinput based on dates available
output$date_ui <- renderUI({
  dateRangeInput("date", "Choose a date range:",
    start = min(corona_sf$date) + 1, end = max(corona_sf$date),
    min = min(corona_sf$date) + 1, max = max(corona_sf$date),
    width = "100%"
  )
})
