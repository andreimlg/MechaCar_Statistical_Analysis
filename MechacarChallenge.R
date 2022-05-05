#Deliverable1

mechacar_mpgdf <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(mechacar_mpgdf)


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpgdf) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpgdf)) #generate summary statistics

#Deliverable2

suspension_coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset
head(suspension_coil)
library(tidyverse)
summarize_coil <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
summarize_coil_lot <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

#Deliverable3

t.test(x=suspension_coil$PSI, mu=1500) 

lot1 <- subset(suspension_coil, Manufacturing_Lot=='Lot1')
t.test(x=lot1$PSI, mu=1500)

lot2 <- subset(suspension_coil, Manufacturing_Lot=='Lot2')
t.test(x=lot2$PSI, mu=1500)

lot3 <- subset(suspension_coil, Manufacturing_Lot=='Lot3')
t.test(x=lot3$PSI, mu=1500) 


plt <- ggplot(suspension_coil,aes(x=Manufacturing_Lot,y=PSI,color=Manufacturing_Lot)) #import dataset into ggplot2
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot with labels rotated 45 degrees
