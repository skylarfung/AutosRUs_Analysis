# AutosRUs_Analysis

# Mecha Car Write Up

## MPG Regression 

The linear model shows that the variables that have the most effect on the mileage are the vehicle length and the ground clearance. The other values, although they help the R squared value, do not have a significant impact in the regression. The p-value, which is 3.637e-12, is significantly smaller than the assumed significant level of 0.05%. Therefore, we can reject the null hypothesis and say that the slope of the liner model is not zero. The best linear model with the least amount of overfitting has an r-squared value of 0.674. The model is not very effective in predicting the MPG and will need more variables to predict the MPG more accurately.

## Suspension Coil Summary 

The summary statistic for the different manufacturing lots producing the suspension coils show that there is potentially a difference in the means between the three lots. The mean PSI for coil manufactured in lot 3 are lower than the other two lots. This can be further examined in the next section where we test the difference between the two means. However, the current design does not meet the specification that the variance does not exceed 100 PSI. The variance in coils produced in lot 3 is a lot higher than the other two and exceeds 100 PSI.

## Suspension Coil T-Test

A one-way ANOVA test was run to see if all the means are equal or if they were statistically different. The null hypothesis states that the means of the PSI is all the same for coils produced at the three lots. The alternative hypothesis stats that the means between the three lots are not equal. The significance level is assumed to be 0.05. After running the test, we fail to reject the null hypothesis. The p-value is 0.014 which is under the 0.05 significance level set in the beginning. Therefore, we can assume that the mean of the population is equal to 1500. 