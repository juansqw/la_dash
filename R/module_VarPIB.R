# Tipo de cambio

# Crea grafico de tipo de cambio (barra) y depreciacion (linea).
# UI
pibUI <- function(id){
  echarts4rOutput(NS(id, 'tcn_plot'))
}

# Server
pibServer <- function(id, cnt, var, nombre){
  moduleServer(id, function(input, output, session){
    output$tcn_plot <- renderEcharts4r({
      variacionesQ |> 
        filter(country == cnt,
               variable == var) |> 
        select(fecha, value, var_trimestral, var_interanual) |> 
        e_charts(fecha) |> 
        e_line(var_interanual,
               symbol = 'none',
               name = 'Interanual',
               y_index = 1) |>
        e_line(var_trimestral,
               symbol = 'none',
               name = 'Trimestral',
               y_index = 1) |> 
        e_tooltip(trigger = "axis") |> 
        e_y_axis(scale = TRUE) |>
        e_datazoom(start = 80) |> 
        e_hide_grid_lines()
    })
  })
}