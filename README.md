# MechaCar_Statistical_Analysis

## Overview of Project
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverables:
This assignment consists of three technical analysis deliverables and a proposal for further statistical study.

1. ***Deliverable 1:*** Linear Regression to Predict MPG
2. ***Deliverable 2:*** Summary Statistics on Suspension Coils
3. ***Deliverable 3:*** T-Test on Suspension Coils
4. ***Deliverable 4:*** Design a Study Comparing the MechaCar to the Competition

# Deliverable 1
## Linear Regression to Predict MPG
### Results

![linear_reg.png](/Results/linear_reg.png)

The linear regression model above estimates that:

mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD - 104.0

* With the formula above vehicle length and ground clearance are statistically likely to provide non-random amounts of variance to the model or are most likely to affect the miles per gallon performance of the MechaCar's AutosRUs prototype.

* It is important to note the model's p-value of 5.35e-11 is lower than the 0.05 assumed statistical significance. Therefore, there is strong evidence against the null hypothesis (slope = 0) and we can accept the alternative hypothesis that the slope is not 0.

* The model's r-squared value of .7149 means that about 71% of the variance in mpg predictions can be explained by this model. 29% of the variance in mpg predictions cannot be explained by this model. The variables of vehicle length, spoiler angle, ground clearance, and AWD have a strong positive association with mpg. Therefore, this model effectively predicts mpg of MechaCar prototypes.

# Deliverable 2
## Summary Statistics on Suspension Coils
### Results

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The dataset analyzed contains the results of testing the weight capacities of multiple suspension coils from multiple production lots to determine consistency. First we examine a summary of manufacturing lots and obtained the results below which shows the variance of the. Suspension coils is 62.29 pounds per square inch which does not exceed the design specification.

![total_summary.png](/Results/total_summary.png)

When we examine the manufacturing data by each lot we can see that Lot 1 and Lot 2 have variances well below the design specification. However, Lot 3 has a larger variance well above the design specification which is causing the PSI variance in the summary of manufacturing lots to increase significantly. 

![lot_summary.png](/Results/lot_summary.png)

Additionally, we can see this by displaying a box plot of the lot summary above. 

![box_plot.png](/Results/box_plot.png)

# Deliverable 3
## T-Tests on Suspension Coils
### Results

The first t-test was used to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. The result of the t-test showed that there was a sample mean of 1,498.78 and a p-value of 0.06. Because our p-value is higher than the assumed statistical significance of 0.05, we fail to reject the null hypothesis which means that the PSI across all manufacturing lots is statistically similar to the population mean of 1,500 pounds per square inch.

![t_test.png](/Results/t_test.png)

The following three t-tests were used to determine if the PSI across each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. 

### Lot 1 T-Test

![lot1_t_test.png](/Results/lot1_t_test.png)

**Lot 1** results show that the ```sample mean is 1,500``` and the p-value is a perfect 1. There is no statistical difference from the population mean of 1,500 pounds per square inch. In this case, we fail to reject the null hypothesis.

### Lot 2 T-Test

![lot2_t_test.png](/Results/lot2_t_test.png)

**Lot 2** results show that the ```sample mean is 1,500.2``` and the p-value is 0.61. This p-value is much higher than the assumed 0.05 statistical significance, therefore we fail to reject the null hypothesis. There is no statistical difference from the population mean of 1,500 pounds per square inch.


### Lot 3 T-Test

![lot3_t_test.png](/Results/lot3_t_test.png)

**Lot 3** results show that the ```sample mean is 1,496.14``` and the p-value is 0.04. This p-value is lower than the assumed 0.05 statistical significance, therefore we reject the null hypothesis and accept the alternative hypothesis that the true mean is not equal to 1,500. There is no statistical difference from the population mean of 1,500 pounds per square inch.


# Deliverable 4
## Linear Regression to Predict MPG
### Results