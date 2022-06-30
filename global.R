# Global

# ---- Libraries ----
library(shiny)
library(shinydashboard)
library(tidyverse)
library(echarts4r)

# ---- Data wrangling ----
macro_db <- readxl::read_excel("data/macro_db.xlsx") |>  
  mutate(fecha = as.Date(fecha, "%Y-%m-%d", tz = "UTC")) |> 
  pivot_longer(!fecha,
               names_to = 'variable',
               values_to = 'value') |>  
  separate(variable, c('country', 'variable'), sep = '[.]') |> 
  na.omit()

variaciones <- macro_db  |>  
  filter(variable %in% c('imae_org', 'imae_tyc', 'ipc_gen', 'tcv'))  |>  
  group_by(country, variable)  |>  
  mutate(var_mensual = round(100*((value/dplyr::lag(value,1))-1), digits = 2),
         var_interanual = round(100*((value/dplyr::lag(value,12))-1), digits = 2)) |> 
  ungroup()

# ---- Shiny ----
source('R/module_VIM.R')
source('R/module_TCN.R')
source('R/module_TI.R')

source('ui.R')
source('server.R')
shinyApp(ui = ui, server = server)