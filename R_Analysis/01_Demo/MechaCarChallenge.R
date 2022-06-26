#add libs
library(dplyr)
library(jsonlite)
library(tidyverse)
#read in csv
mechaCarMPG <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#perform linear regressiong with lm() on all 6 variables adding df as data param
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCarMPG)
#det the p-value and r-sqared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCarMPG))


#read in the suspension_coil csv
suspensionCoil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
#create a total summary df using summarize()
total_summary <- suspensionCoil %>% summarize(Mean_PSI=mean(PSI),
                                              Median_PSI=median(PSI),
                                              Variance_PSI=var(PSI),
                                              Std_Dev_PSI=sd(PSI),
                                              Number_Coils=n(),
                                              .groups='keep')
