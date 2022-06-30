# Tipo de cambio

# Crea grafico de tipo de cambio (barra) y depreciacion (linea).
# UI
tcUI <- function(id){
  echarts4rOutput(NS(id, 'tcn_plot'))
}

# Server
tcServer <- function(id, cnt){
  moduleServer(id, function(input, output, session){
    output$tcn_plot <- renderEcharts4r({
      variaciones |> 
        filter(country == 'dom',
               variable == 'tcv') |> 
        select(fecha, value, var_mensual, var_interanual) |> 
        e_charts(fecha) |> 
        e_bar(value,
              name = 'Venta') |> 
        e_line(var_interanual,
               symbol = 'none',
               name = 'Interanual',
               y_index = 1) |>
        e_line(var_mensual,
               symbol = 'none',
               name = 'Mensual',
               y_index = 1) |> 
        e_tooltip(trigger = "axis") |> 
        e_y_axis(scale = TRUE) |>
        e_datazoom(start = 80) |> 
        e_hide_grid_lines() |> 
        e_title(text = 'Tipo de cambio nominal', 
                subtext = "Variación (%)")
    })
  })
}