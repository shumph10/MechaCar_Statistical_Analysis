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



