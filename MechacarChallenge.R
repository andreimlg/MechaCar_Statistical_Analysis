mechacar_mpgdf <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(mechacar_mpgdf)


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpgdf) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpgdf)) #generate summary statistics


suspension_coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset
head(suspension_coil)
library(tidyverse)
summarize_coil <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
summarize_coil_lot <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
