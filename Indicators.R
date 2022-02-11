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

#corona <- c("")
#consumption <- c("")
#unemployment <- c("")
#housing <- c("")
