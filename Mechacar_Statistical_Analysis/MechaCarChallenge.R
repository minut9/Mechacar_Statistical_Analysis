library(dplyr)

########### Deliverable 1 ###############################
# import csv file
# demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
MechaCar_mpg <- read.csv(file='Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear reg function
# lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) 
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
Mecha_lm

#summary view
summary(Mecha_lm)

# R-Squared variable
summary(Mecha_lm)$r.squared


######### Deliverable 2 ################################
#import csv
Suspension_Coil <- read.csv(file='Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# summary table
total_summary <-Suspension_Coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))

# view lots using groupby
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))

######## Deliverable 3 ############################
# level of significance is .05

t.test(Suspension_Coil$PSI, mu=1500)

# analysis p-value greater than .05, fail to reject 

#ttests by lots
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

