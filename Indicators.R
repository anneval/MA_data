##### MAIN SCRIPT SENTIMENT INDICATOR ######
## will be used to create indicators and update them automatically! 

# Load needed libraries

library(trendecon)
#library(tidyverse)
library(tsbox)

# Specify region to Austria 
# Select keywords: arbitraily chosen
geo <- "AT"
keywords <- c("Wirtschaftskrise", "Kurzarbeit", "arbeitslos","Insolvenz")#, "Inflation")

###### Only once for initial download!

#proc_keyword_init("Wirtschaftskrise",geo) # keywords[1]
#proc_keyword_init("Kurzarbeit",geo)# keywords[2]
#proc_keyword_init("arbeitslos",geo)# keywords[3]
#proc_keyword_init("Insolvenz",geo)# keywords[4]
#proc_keyword_init("Inflation",geo)# keywords[5]

#######

# Update the keyword timeseries! 
## proc_index fucntion includes the following functions: proc_keyword_latest,proc_combine_freq, proc_seas_adj

proc_index(keywords,"AT", "trendecon")

###### ADD FURTHER INDICES! (CORONA, CONSUMPTION, UNEMPLOYMENT) Add to file in GIT! 

corona <- c("Inzidenz", "Coronafälle", "Testcenter", "Lockdown", "Pandemie")

#proc_keyword_init("Inzidenz",geo, from = "2014-01-01") 
#proc_keyword_init("Coronafälle",geo, from = "2014-01-01")
#proc_keyword_init("Testcenter",geo, from = "2014-01-01")
#proc_keyword_init("Impfung",geo, from = "2014-01-01") not included
#proc_keyword_init("Lockdown",geo, from = "2014-01-01")
#proc_keyword_init("Pandemie",geo, from = "2014-01-01")

proc_index(corona,"AT", "corona")

# Consumption
consumption <- c("Shopping", "Klamotten", "Autokauf", "Restaurant", "Möbel") # wirtschaft, Klamotten, Autokauf, Electorics,Food & Drink, Furniture 

#proc_keyword_init("Shopping",geo, from = "2014-01-01") 
#proc_keyword_init("Klamotten",geo, from = "2014-01-01") 
#proc_keyword_init("Autokauf",geo, from = "2014-01-01") 
#proc_keyword_init("Restaurant",geo, from = "2014-01-01") 
#proc_keyword_init("Möbel",geo, from = "2014-01-01") 

proc_index(consumption,"AT", "consumption")

# Unemployment
unemployment <- c("Jobagentur", "Arbeitslosengeld", "Jobcenter", "arbeitslos")

#proc_keyword_init("Jobagentur",geo, from = "2014-01-01") 
#proc_keyword_init("Arbeitslosengeld",geo, from = "2014-01-01") 
#proc_keyword_init("Jobcenter",geo, from = "2014-01-01") 
#proc_keyword_init("arbeitslos",geo, from = "2014-01-01") 

#proc_index(unemployment,"AT", "unemployment")

# Housing
housing <- c("Immobilienfinanzierung", "immobilienscout24", "Immobilienmarkt","Immobilienmakler") #“real estate listings” 

#proc_keyword_init("Immobilienfinanzierung",geo, from = "2014-01-01") 
#proc_keyword_init("immobilienscout24",geo, from = "2014-01-01") 
#proc_keyword_init("Immobilienmarkt",geo, from = "2014-01-01") 
#proc_keyword_init("Immobilienmakler",geo, from = "2014-01-01") 

#proc_index(housing,"AT", "housing")