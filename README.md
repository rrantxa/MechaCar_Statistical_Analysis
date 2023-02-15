# MechaCar Statistical Analysis: An R Project
## Purpose of the Analysis
The purpose of this project was to perform statistical analysis on a series of datasets from the automotive industry. The main objective was to analyze manufacturing data on a car company's latest prototype, called **MechaCar**. In order to complete this project, the statistical analysis was completed through R, where we performed the following statistical tests:
* Linear regression analysis
* Summary statistics
* T-Tests

Additionally, at the end of this report you'll be able to find the proposal for a study design that could help us gain information on the performance of the MechaChar prototype versus its competition. 
## Results
### Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/113153777/218876936-bfc0871b-6139-4b77-8075-2448d74cda5e.png)

*Figure 1. - Multiple Linear Regression*

![image](https://user-images.githubusercontent.com/113153777/218877030-1549399b-b7ac-4ba3-ac82-1d37d0b54c40.png)

*Figure 2. - Linear Regression Summary*

The two figures above are the results of the first analysis we performed, which was a multiple linear regression that would allow us to determine which variables have an effect on Miles Per Gallon (MPG) performance for the MechaChar prototype. Regarding these results, we should consider the following questions:
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The two variables that provide a non-random amount of variance to the mpg values are vehicle_length and ground_clearance. This means that these values might have a significant correlation to the mpg variable. Although the other variables might also play part in this, their respective p-values do not allow us to conclude that they have a strong correlation to mpg. 

* Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model **is not zero**. This is because our linear regression model shows that there is a linear relationship between mpg and other values in the dataset. Our overall p-value for this model is actually **5.35e-11**, which is much smaller than the significance level of 0.05%. Thus, there is not enough evidence to reject the null hypothesis (which states that the slope of the linear model is zero, or m = 0).

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Our model predicts mpg of MechaChar prototypes effectively 71% of the time (which is our r-squared value). Although this is a good prediction value, more tests might be needed in order to better predict mpg. 

### Summary Statistics on Suspension Coils
![image](https://user-images.githubusercontent.com/113153777/218877109-99765e61-c5d3-4536-95c2-33e681620703.png)

*Figure 3. - Summary Statistics on Suspension Coils*

![image](https://user-images.githubusercontent.com/113153777/218877138-6b87bf51-a71a-4498-827e-6dffa517903d.png)

*Figure 4. - Summary Statistics on Suspension Coils, by Lot*

The second analysis we performed was summary statistics on our suspension coils dataset. For this segment of the analysis, the following question must be considered: 
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

According to our results, the current manufacturing lot does cover this requirement when we look at the overall variance for the suspension coils (62.29356, according to Figure 3). However, this is not true for every individual lot. If we examine Figure 4, we'll be able to see that while Lots 1 and 2 do cover this variance requirement (as their variance is 0.98 and 7.47, respectively) Lot 3 **does not meet his requirement** (with a variance of 170.29). 

### T-Tests on Suspension Coils.
![image](https://user-images.githubusercontent.com/113153777/218877225-5128ba6e-e599-42b5-8ad6-c8806c74b763.png)

*Figure 5. - T-Test on Suspension Coils (General).*

![image](https://user-images.githubusercontent.com/113153777/218877280-70b54be5-1600-4291-9844-e84cc540f3b2.png)

*Figure 6. - T-Test on Lot 1*

![image](https://user-images.githubusercontent.com/113153777/218877311-8b1d6d3e-a976-4921-969b-a381f5eec439.png)

*Figure 7. - T-Test on Lot 2*

![image](https://user-images.githubusercontent.com/113153777/218877328-92991567-2a25-4827-81d0-5c567c587f51.png)

*Figure 8. - T-Test on Lot 3*

For our third analysis, we performed a series of T-Tests on our suspension coil data in order to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. The following results were obtained:
* Figure 5: With a p-value of 0.06038, we do not have enough evidence to conclude that the overall PSI is statistically different from the population mean.
* Figure 6: With a p-value of 1, we do not have enough evidence to conclude that the PSI of Lot 1 is statistically different from the population mean.
* Figure 8: With a p-value of 0.6072, we do not have enough evidence to conclude that the PSI of Lot 2 is statistically different from the population mean.
* Figure 9: With a p-value of 0.4168, we **have** enough evidence to conclude that the PSI of Lot 3 is statistically different from the population mean. If we compare this data to our Summary Statistics data, it seems that Lot 3 might be one that could have the most potential issues in the future. 

### Study Design: MechaCar vs Competition
Although this analysis focused on the performance of the MechaCar prototype according to a set of requirements defined by the automotive company, it would be highly beneficial to perform more statistical tests that would allow us to quantify how the MechaCar performs against the competition. Thus, we propose a study that would take the following elements into account: 
* Metrics to test: 

City Fuel Efficiency (CFE) based on Vehicle Brand. 

* Hypothesis:

H0: There is no statistical difference between the CFE means of all groups. 

H1: At least one of the CFE means is different from all other groups. 

* Statistical test to perform: 

One-way ANOVA. 

* Data requirements: 

We would of course need the city fuel efficiency data of multiple vehicle brands. In order to ensure the best results, our data should be of at least 50-60 data points per vehicle brand, and at least three vehicle brands (including the MechaCar prototype). The other vehicles should have similar characteristics to the MechaCar prototype. The data would be, preferrably, in a CSV format. 
