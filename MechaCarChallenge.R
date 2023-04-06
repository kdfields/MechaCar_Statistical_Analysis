# load dplyr package
library(dplyr)

# import MechaCar_mpg.csv
mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Part1: Generate multiple linear regression model for all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg)

# Part1: Create statistical summary of the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg))

# import Suspension_Coil.csv
coil <- read.csv('Suspension_coil.csv',check.names = F,stringsAsFactors = F)

# Part2: Create total_summary dataframe for Suspension_Coil
coil_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Part2: Create lot_summary dataframe for Suspension_Coil by lot
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#generate 50 randomly sampled data points from coil
sample_table <- coil %>%  sample_n(50)

# Part3: write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(coil$PSI,mu=1500)

# Part3: Create lot summary dataframes for each of the 3 Lots
coil_psi_lot1 <- coil %>% filter(Manufacturing_Lot == 'Lot1')
coil_psi_lot2 <- coil %>% filter(Manufacturing_Lot == 'Lot2')
coil_psi_lot3 <- coil %>% filter(Manufacturing_Lot == 'Lot3')

# Part3, cont: write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument
t.test(coil_psi_lot1$PSI,mu=1500)
t.test(coil_psi_lot2$PSI,mu=1500)
t.test(coil_psi_lot3$PSI,mu=1500)

