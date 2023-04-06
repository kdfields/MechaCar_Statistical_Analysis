# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
+ According to our results, vehicle length, vehicle weight, and ground clearance provide a non-random amount of variance to the mpg values in the dataset.
+ The slope of the linear model is not zero because the p-value of the linear regression (5.35 x 10^-11) is much smaller than the assumed significance level of 0.05%.
+ With an r-squared value of 0.71, about 71% of all mpg predictions will be correct.  This linear model predicts mpg of MechaCar effectively.

![image](https://user-images.githubusercontent.com/113741694/230400451-db714048-f4d8-4805-8929-1733e70766fb.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of suspension coils must not exceed 100 PSI.  According to the Coil Summary, the total variance across all lots (62.3) is below that threshold.  However, when the Lot Summary is analyzed Lot3 (170.3) is above that threshold.  

Coil Summary

![image](https://user-images.githubusercontent.com/113741694/230413403-ce63bb67-66d3-46d3-8d32-3af3b48023da.png)

Lot Summary

![image](https://user-images.githubusercontent.com/113741694/230413671-62f8ec37-27a3-4e9d-b69d-b0607a85126d.png)

## T-Tests on Suspension Coils
### Analysis of All Manufacturing Lots
The true mean of the sample data is 149.78, which is the same mean observed in the coil summary table from Deliverable 2.  The p-value for this sample is 0.06, which is higher than the significance level of 0.05, therefore, there is not enough eveidence to support rejecting the null hypthothesis.  **According to the results, the mean of all manufacturing lots is statistically similar to the calculated population mean of 1500.**

![image](https://user-images.githubusercontent.com/113741694/230450845-31c98e6e-df5d-47a6-9858-13862d75ded7.png)

### Analysis of Each Manufacturing Lot
#### Lot 1
The Lot 1 sample has a mean of 1500 and p-value of 1, which means there is not enough evidence to reject the null hypothesis because the p-value exceeds the accepted significance level of 0.05.  **According to the results, the mean of Lot 1 and the population are statistically similar.**

![image](https://user-images.githubusercontent.com/113741694/230454955-fe141fb5-0a14-4e39-9ffa-a70056b3be17.png)

#### Lot 2
The Lot 2 sample has a mean of 1500.2 and a p-value of 0.6072, which means there is not enough evidence to reject the null hypothesis because the p-value exceeds the accepted significance level of 0.05.  **According to the results, the mean of Lot 2 and the population are statistically similar.**

![image](https://user-images.githubusercontent.com/113741694/230455081-679d464d-e653-4c31-a79c-f2b42face50d.png)

#### Lot 3
The Lot 3 sample has a mean of 1496.14 and a p-value of 0.04168, which means there is enough evidence to reject the null hypothesis because the p-value is lower than the accepted significance level of 0.05.  **Acccording to the results, there is a statistical difference between the Lot 3 mean and the population mean.**

![image](https://user-images.githubusercontent.com/113741694/230455162-2fb7906a-8dd3-465e-a735-ae294ca8fa67.png)

## Study Design: MechaCar vs Competition
The AutosRUs marketing team sent a survey to customers who attended an AutosRUs showroom in the past 12 months.  The survey asked respondents to rank the three factors that have the biggest impact on a vehicle purchase.  The marketing team shared the results and the 3 biggest factors ranked in terms of importance:

+ resale value
+ city/highway miles per gallon
+ safety rating


