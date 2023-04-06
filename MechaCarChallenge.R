# load dplyr package
library(dplyr)

# import MechaCar_mpg.csv
mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg))

# import Suspension_Coil.csv
coil <- read.csv('Suspension_coil.csv',check.names = F,stringsAsFactors = F)

# Create total_summary dataframe for Suspension_Coil
coil_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create lot_summary dataframe for Suspension_Coil by lot
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#generate 50 randomly sampled data points from coil
sample_table <- coil %>%  sample_n(50)

# compare all lots versus population mean
t.test(coil$PSI,mu=1500)

# filtering indivual lots to compare to population mean of 1500
coil_psi_lot1 <- coil %>% filter(Manufacturing_Lot == 'Lot1')
coil_psi_lot2 <- coil %>% filter(Manufacturing_Lot == 'Lot2')
coil_psi_lot3 <- coil %>% filter(Manufacturing_Lot == 'Lot3')

# t-test to compare each lot's mean to population mean of 1500
t.test(coil_psi_lot1$PSI,mu=1500)
t.test(coil_psi_lot2$PSI,mu=1500)
t.test(coil_psi_lot3$PSI,mu=1500)

