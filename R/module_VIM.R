# Variaciones mensuales e interanuales

# Este modulo se utiliza para calcular las variaciones mensuales e interanuales
# de algunas de las variables. Hasta ahora se utiliza para inflacion e IMAE.

# UI
VarimUI <- function(id){
  echarts4rOutput(NS(id, 'inflation_plot'))
}

# Server
VarimServer <- function(id, cnt, var, ttl){
  moduleServer(id, function(input, output, session){
    output$inflation_plot <- renderEcharts4r({
      variaciones |> 
        filter(country == cnt,
               variable == var) |> 
        select(fecha, var_mensual, var_interanual) |> 
        e_charts(fecha) |> 
        e_line(var_interanual,
               symbol = 'none',
               name = 'Interanual') |>
        e_line(var_mensual,
               symbol = 'none',
               name = 'Mensual') |> 
        e_tooltip(trigger = "axis") |> 
        e_y_axis(scale = TRUE) |>
        e_datazoom(start = 80) |> 
        e_title(text = ttl, subtext = "Variación (%)")
    })
  }
  )
}