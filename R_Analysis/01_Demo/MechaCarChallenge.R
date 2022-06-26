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
                                              .groups='keep')

#create summary that is grouped by the manufacturing lot
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                            Median_PSI=median(PSI),
                                                                            Variance_PSI=var(PSI),
                                                                            Std_Dev_PSI=sd(PSI),
                                                                            .groups='keep')

#Create a t-test on the suspension coils data frame
  #det if the PSI across all manufacturing lots is stat diff from the population mean 
  #of 1,500 PSI
t.test(suspensionCoil$PSI,mu=15000)

#use subset() to create subsets for each manufactoring lots PSI 
lot1 <- subset(suspensionCoil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspensionCoil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspensionCoil, Manufacturing_Lot=="Lot3")

#use created subsets to perform t tests on individual lots
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)










