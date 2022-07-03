# Global

# ---- Libraries ----
library(shiny)
library(shinydashboard)
library(tidyverse)
library(echarts4r)
library(data.tree)

# ---- Data wrangling ----
# Mensual
datosM <- readxl::read_excel("data/macro_db.xlsx", sheet = 'dataM') |>  
  mutate(fecha = as.Date(fecha, "%Y-%m-%d", tz = "UTC")) |> 
  pivot_longer(!fecha,
               names_to = 'variable',
               values_to = 'value') |>  
  separate(variable, c('country', 'variable'), sep = '[.]') |> 
  na.omit()

variaciones <- datosM  |>  
  filter(variable %in% c('imae_org', 'imae_tyc', 'ipc_gen', 'tcv', 'rem_i'))  |>  
  group_by(country, variable)  |>  
  mutate(var_mensual = round(100*((value/dplyr::lag(value,1))-1), digits = 2),
         var_interanual = round(100*((value/dplyr::lag(value,12))-1), digits = 2)) |> 
  ungroup()

# Trimestral
datosQ <- readxl::read_excel("data/macro_db.xlsx", sheet = 'dataQ') |>  
  mutate(fecha = as.Date(fecha, "%Y-%m-%d", tz = "UTC")) |> 
  pivot_longer(!fecha,
               names_to = 'variable',
               values_to = 'value') |>  
  separate(variable, c('country', 'variable'), sep = '[.]') |> 
  na.omit()

variacionesQ <- datosQ  |>  
  group_by(country, variable)  |>  
  mutate(var_trimestral = round(100*((value/dplyr::lag(value,1))-1), digits = 2),
         var_interanual = round(100*((value/dplyr::lag(value,4))-1), digits = 2)) |> 
  ungroup()

# PIB Nominal
pib_nom <- readxl::read_excel("data/macro_db.xlsx", sheet = 'pibNom') |> 
  group_by(country) |> 
  mutate(maxYear = max(fecha)) |> 
  ungroup()


# ---- Shiny ----
source('R/module_VIM.R')
source('R/module_TCN.R')
source('R/module_TI.R')
source('R/module_VarTri.R')
source('R/module_VarPIB.R')
source('R/module_pib.R')

source('ui.R')
source('server.R')
shinyApp(ui = ui, server = server)