# R_Analysis_class


##**Linear Regression to Predict MPG**
The following linear regression model and summary thereof were created using the MechaCar_mpg dataset. The output are as follows:

**Linear Regression:**

![linear_regression_mechaCar_mpg](https://user-images.githubusercontent.com/100040705/175826103-8c091a95-cb36-41b1-814f-a14b5080cb97.png)

**Linear Regression Summary:**

![summar_lin_regression_MechaCar_MPG](https://user-images.githubusercontent.com/100040705/175826125-a47880e7-f64d-4eeb-b72a-6ab26b33ad45.png)


From the output of linear regression and summary modeling we can concluded the following:
- The variables/coefficents that provided a statistically non-random amount of variance to the mpg values in the data set include the vehicle length, and ground clearance. This means that these variables do have a significant effect on miles per gallon(mpg) in the data set analyzed. The P-values for these variables are 2.60e-12 (vehicle length) and 5.21e-08 (ground_clearance) respectively, both being found statistically significant as they are well under the threshold p-value of 0.05. The other variables considered, vehicle weight, spoiler angle, and if the car is all wheel drive(AWD) do not have p-values of under 0.05 and are therefore not statitically signigicant within the given data to non-randomly affect the cars mpg. 
- the slope of the linear model would not be considered to be zero. a slope of zero would indicate that there is no correlation between variables and mpg, the models p-value is 5.35e-11, which is well below the threshold of 0.05. This allows the conclusion to be drawn that there is sufficient evidence to **reject** the null hypothesis that the slope would be zero, and **accept** the hypothesis that the slope would be non-zero.
- The model effectly predicts mpg of MechaCar prototpyes due to the linear models r-squared value of 0.7149. This indicates 71.49% of predictions will be determined by the model. Since the intercept is additionally shown to be significant (5.08e-08) there may be additional variables that can help explain variability of predicted mpg, and transformation or inclusion of additional data sets may be implimented to additionally improve the models predictions. 



##**Summary Statistics on Suspension Coils**
- Design specifications for the MechaCar suspension  coils dictate that variance of suspension coils cannot exceet 100 pounds per square inch (PSI). Taking summary statistics with R, we can conclude from the entire dataset the variance for PSI is 62.29, well below the 100 PSI variance, as shown below:

![total_sum_suspensionCoil](https://user-images.githubusercontent.com/100040705/175827581-8ee3cc03-ac75-41c3-9dce-394b44f039e4.png)

- Three different manufactoring lots are representated within the data. To ensure precise and consistent results, the same summary statistics were ran while grouping by manufactoring lot. From the resulting statistics we can conclude that only lot 1 & lot 2 are within PSI specifications, while lot 3 is above the 100 PSI variance limit. There is very low variance for lot 1 & 2 which has affected the total lots variance, making it within passing specifications. This is why in-depth analysis is critical so variance between individual lots can be scrutinized and problems identified. Lot 3 would need significant improvement to be considered passing the specifications as it is well above limits. Resulting tables from grouping summary statistics are as follows:

![summ_by_lot_suspension_coil](https://user-images.githubusercontent.com/100040705/175827723-3502b4c2-95f0-421b-9efa-2ad42fe2ac52.png)


##**T-Tests on Suspension Coils**
T-tests were performed to test the hypothesis that PSI across all namufactoring lots are statistically different from the population mean (1,500 PSI). The null hypothesis being there will be no statistical difference in PSI from manufacturing lots from the population mean (1,500 PSI). 

A t-test was performed on the data where all lots are represented together. The resulting t-test shows a p-value of 2.2e-16, well below the significance level of p-value 0.05. This means for this data set we **do** have sufficient evidence to reject the null hypothesis and therefore conclude that the means are statistically different. Results of t-test for all data within the suspension coils data set is as follows:

![ttest_suspension_coil](https://user-images.githubusercontent.com/100040705/175828585-2ca837dc-202e-4aa5-b7a4-08ce9e81f11d.png)

When looking at the summary statistics for each manufacturing lot individual it was found the total data set did not accurately represent the individual lots, therefore t-tests were performed on each lot individually, with the same hypothesis and null hypothesis in mind. 

- Lot 1's t-test shows a p-value of 1, well above the significance level of p-value 0.05. This means for this data set we do not have sufficient evidence to reject the null hypothesis and therefore conclude that the means are statistically similar. The t-test for lot 1 is as depicted below:

![lot1_ttest_suspension_coil](https://user-images.githubusercontent.com/100040705/175828764-b56174b4-0efa-4b67-a823-41089d09fd63.png)

- Lot 1's t-test shows a p-value of .6072, above the significance level of p-value 0.05. This means for this data set we do **not** have sufficient evidence to reject the null hypothesis and therefore conclude that the means are statistically similar. The t-test for lot 1 is as depicted below:

![lot2_ttest_suspension_coil](https://user-images.githubusercontent.com/100040705/175828812-acfb3a1d-7755-4e33-8428-917eb4b0056e.png)


- Lot 1's t-test shows a p-value of .04168, below the significance level of p-value 0.05. This means for this data set we **do** have sufficient evidence to reject the null hypothesis and therefore conclude that the means are statistically different. The t-test for lot 1 is as depicted below:

![lot3_ttest_suspension_coil](https://user-images.githubusercontent.com/100040705/175828816-aac06400-2b4b-4e22-8360-a035d2d648dd.png)
















