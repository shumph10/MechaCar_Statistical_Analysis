#add libs
library(dplyr)
library(jsonlite)
library(tidyverse)
#read in csv
mechaCarMPG <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#perform linear regressiong with lm() on all 6 variables adding df as data param
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCarMPG)
#