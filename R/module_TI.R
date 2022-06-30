# Modulo para crear grafico de tasas de interes

# UI
tiUI <- function(id){
  echarts4rOutput(NS(id, 'ti_plot'))
}

# Server
tiServer <- function(id, cnt){
  moduleServer(id, function(input, output, session){
    output$ti_plot <- renderEcharts4r({
      macro_db |> 
        filter(country == cnt,
               variable %in% c('tia', 'tip', 'tpm')) |> 
        mutate(value = round(value, digits = 2),
               variable = recode(variable,
                                 'tia' = 'Activa',
                                 'tip' = 'Pasiva',
                                 'tpm' = 'TPM')) |> 
        select(fecha, variable, value) |> 
        group_by(variable) |> 
        e_charts(fecha) |> 
        e_line(value,
               symbol = 'none') |> 
        e_tooltip(trigger = "axis") |> 
        e_y_axis(scale = TRUE) |>
        e_datazoom(start = 80) |> 
        e_title(text = 'Tasas de Interés', subtext = "(%)")
    })
  }
  )
}
