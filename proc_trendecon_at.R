#' Calculate Trendecon Main Indices for Austria

proc_trendecon_at <- function() {

  kw_trendecon <- c(
    "Wirtschaftskrise",
    "Kurzarbeit",
    "arbeitslos",
    "Insolvenz"
  )
  
  kw_corona <- c(
    "Inzidenz",
    "Coronafälle",
    "Testcenter",
    "Lockdown",
    "Pandemie"
  )
  
  kw_consumption <- c(
    "Shopping",
    "Klamotten",
    "Autokauf",
    "Restaurant",
    "Möbel"
  )
  
  kw_unemployment <- c(
    "Jobagentur",
    "Arbeitslosengeld",
    "Jobcenter",
    "arbeitslos"
  )
  
  kw_housing <- c(
    "Immobilienfinanzierung",
    "immobilienscout24",
    "Immobilienmarkt",
    "Immobilienmakler"
  )

  proc_index(kw_trendecon, "AT", 'trendecon')
  proc_index(kw_corona, "AT", 'corona')
  proc_index(kw_consumption, "AT", 'consumption')
  proc_index(kw_unemployment, "AT", 'unemployment')
  proc_index(kw_housing, "AT", 'housing')
  
  indices_in_production <- c(
    "trendecon",
    "corona",
    "consumption",
    "unemployment",
    "housing"
  )

  # copy to data/at
  lapply(indices_in_production, function(e) fs::file_copy(path_keyword(e, "at", "sa"), path_data("at"), overwrite = TRUE))

}


