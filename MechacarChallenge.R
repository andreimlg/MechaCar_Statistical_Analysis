mechacar_mpgdf <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(mechacar_mpgdf)


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpgdf) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpgdf)) #generate summary statistics
