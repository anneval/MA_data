#' Calculate Trendecon Main Indices for Germany
#'
#' @export
#'
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
  
  proc_index(kw_trendecon, "AT", 'trendecon')
  proc_index(kw_corona, "AT", 'corona')
  proc_index(kw_consumption, "AT", 'consumption')
  
  
  indices_in_production <- c(
    "trendecon",
    "corona"
  )

  # copy to data/at
  lapply(indices_in_production, function(e) fs::file_copy(path_keyword(e, "at", "sa"), path_data("at"), overwrite = TRUE))

  # FIXME: also store d, w, m, f in data/de
}


