# Statistical Analysis of Car Data Using R

## Linear Regression to Predict MPG

In this dataset, vehicle weight, spoiler angle, and AWD provided a non-random about of variance to the mpg values. This is determined by their p-values being above the significance level of 0.05, indicating that the variance in mpg based on these variables are not due to chance

The slope of the linear model is not considered to zero for the variables included in the linear regression model due to a value being present for all m (slope) variables.

[img1]

This linear model predicts mpg of MechaCar prototypes effectively as the R squared value produced after computing the linear model is equal to 0.71. This will mean that the model will approximate real-world data points correctly 71% of the time.

[img2]

## Summary Statistics on Suspension Coils

The current manufacturing data meet this design specification for Lots 1 & 2, but not for Lot 3. Based on the variance data provided in the lot summary, the variance for lot 3 is 170 PSI, which is above the parameters of variance indicated by the design specifications. 

[img3]

## T-Tests on Suspension Coils

Based on the results of the series of t-tests, the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 PSI. The p value that was computed by the t test is equal to 0.06, which is above the significance level of 0.05. This indicates that the PSI for this sample is not statistically different than the population mean, and thus we reject the alternative hypothesis (PSI for our dataset is statistically different than population PSI).

[img4]

This observation of the sample PSI not being statistically different than the population mean is consistent with Lots 1 & 2 (p-value = 1 and p-value = 0.6 respectively), however the p-value for Lot 3 = 0.04 which is below the significance level. Therefore, looking just at Lot 3, the PSI is statistically different from the population PSI of 1500, and thus we reject the null hypothesis for the case of Lot 3.

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.

A hypothetical statistical study that can quantify how the MechaCar performs against the competition would be to compare the metric of highway fuel efficiency for a MechaCar vs. their competitor using the mean miles driven for each type of car. The test to be performed would be whether the mean miles driven between a MechaCar and its competitor are statistically different.

In this test, the null hypothesis would be that the mean miles driven between MechaCar and its competitor are not statistically different, and the alternative hypothesis would be that the mean miles driven between MechaCar and its competitor are statistically different.

Based on the metric we are looking to test, and the hypothesis generated, it would be best to use a 2 sample t-test to test the hypothesis. This test is best as we will be using dichotomous data that is continuous, and we are looking for any differences between the datasets based on 1 variable.
