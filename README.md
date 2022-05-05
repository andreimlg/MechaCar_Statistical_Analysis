# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model. This can be shown in their p-value(<0.05).


* Is the slope of the linear model considered to be zero? Why or why not?

As seen in the module the job of a linear regression analysis is to calculate the slope and y intercept values that minimize the overall distance between each data point from the linear model. 

The r-squared value of 0.71 confirms that the slope is not 0 so the linear model predicts well the behavior of mpg values. As well as having a low p-value (<0.05)

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes the model can predict mpg with a 71% of efectiveness, yet the model can be improved by removing the variables that don't contribute to the final result as well as understanding the origin of the data as well as if there's more information available that can be added to the analysis.

![Linear_Regression_results](https://user-images.githubusercontent.com/31755703/166860740-741eabd2-c65a-4dc6-8ebd-7b211c4520c4.PNG)

## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![summary](https://user-images.githubusercontent.com/31755703/166864385-5eedd32a-70f8-48ea-b79b-295bb87dfe6e.PNG)
In total we meet the requirement but we get really close to the limit of 100 pounds per square inch, therefore we are obligated to dig a little bit more in the data so we can identify if a specific lot is the one causing all the noise or it is a general behavior.

![summarybylot](https://user-images.githubusercontent.com/31755703/166864396-0437a856-f885-440b-876c-62e10f40957c.PNG)

After grouping the information by lot we identified that lot3 is the one that exceeded 100 pounds per square inch.
