library(foreign)
data <- read.dta("Butler_Broockman_AJPS_2011_public_dta.dta")
head(data)

install.packages("dplyr")

library(dplyr)
 
   # Calculate means for each treatment condition
   means_table <- data %>%
       group_by(treat_group) %>%
       summarize(
             mean_leg_republican = mean(leg_party == "R"),
             mean_leg_black = mean(leg_black == "black legislator"),
             mean_leg_latino = mean(leg_latino == "Latino legislator"),
             mean_leg_white = mean(leg_white == "white legislator")
         )
#Print the table
print(means_table)

