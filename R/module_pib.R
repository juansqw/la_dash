# PIB pie chart

# UI
pib_pieUI <- function(id){
  echarts4rOutput(NS(id, 'pib_pie'))
}

# Server
pib_pieServer <- function(id, cnt){
  moduleServer(id, function(input, output, session){
    output$pib_pie <- renderEcharts4r({
      
      data <- pib_nom |> 
        filter(country == cnt) |> 
        filter(fecha == max(fecha)) |> 
        select(-c(fecha, country)) |> 
        as.data.frame()
      
      data$parents[data$labels == 'Everything'] <- ''
        
      data_pit <- data.tree::FromDataFrameNetwork(data)
      
      data_pit |> 
        e_charts() |> 
        e_sunburst() 
    })
  })
}
