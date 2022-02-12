##### MAIN SCRIPT SENTIMENT INDICATOR ######
## will be used to create indicators and update them automatically! 

# Load needed libraries

library(trendecon)
#library(tidyverse)
library(tsbox)

# Specify region to Austria 
# Select keywords: arbitraily chosen
geo <- "AT"
keywords <- c("Wirtschaftskrise", "Kurzarbeit", "arbeitslos","Insolvenz", "Inflation")

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

#corona <- c("Inzidenz", "Coronafälle", "Testcenter", "Impfung", "Lockdown")

#proc_keyword_init("Inzidenz",geo, from = "2014-01-01") 
#proc_keyword_init("Coronafälle",geo, from = "2014-01-01")
#proc_keyword_init("Testcenter",geo, from = "2014-01-01")
#proc_keyword_init("Impfung",geo, from = "2014-01-01")
#proc_keyword_init("Lockdown",geo, from = "2014-01-01")

## add index to other file!!!! 
#proc_index(keywords,"AT", "")


# Consumption
#consumption <- c("")

# Jobs
#unemployment <- c("Jobagentur, Arbeitslosengeld")

#housing <- c("Baufinanzierung")
