# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Linear regression is a tool that is used to predict a behavior considering a dependent variable and one or more independent variables. In this case we'll get the equation to model the behavior using multiple independent variables and understand which ones have more impact on the outcome.

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model. This can be shown in their p-value(<0.05).


* Is the slope of the linear model considered to be zero? Why or why not?

As seen in the module the job of a linear regression analysis is to calculate the slope and y intercept values that minimize the overall distance between each data point from the linear model. 


We can confirm by our p-value that slope is not 0. (p=5.35e-11 < 0.05) and we can say by out r-squared value of 0.71 that the linear model predicts well the behavior of mpg values.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes the model can predict mpg with a 71% of efectiveness, yet the model can be improved by removing the variables that don't contribute to the final result as well as understanding the origin of the data as well as if there's more information available that can be added to the analysis.

![Linear_Regression_results](https://user-images.githubusercontent.com/31755703/166860740-741eabd2-c65a-4dc6-8ebd-7b211c4520c4.PNG)

## Summary Statistics on Suspension Coils

Summarazing and grouping data are powerful tools to get information by just having a quick glimpse into the data. But we have to be careful not to get tricked by not looking into details.

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![summary](https://user-images.githubusercontent.com/31755703/166864385-5eedd32a-70f8-48ea-b79b-295bb87dfe6e.PNG)


In total we meet the requirement but we get really close to the limit of 100 pounds per square inch, therefore we are obligated to dig a little bit more in the data so we can identify if a specific lot is the one causing all the noise or it is a general behavior.

![summarybylot](https://user-images.githubusercontent.com/31755703/166864396-0437a856-f885-440b-876c-62e10f40957c.PNG)

After grouping the information by lot we identified that lot3 is the one that exceeded 100 pounds per square inch.

## T-Tests on Suspension Coils

T Test helps us understanding if the means of our samples are the same as the one from our population, by running the test of the whole sample we can conclude that they are statistically similar, but since out p-value is close to our significance level it is highly recommended to dig more.

![summary](https://user-images.githubusercontent.com/31755703/166865691-481ed32d-2143-4e20-a80a-d9f5b5046767.PNG)

Once the analysis is held by lot we can conclude that lots 1 and 2 are statiscally similar but lot3 is not similar to the mean of the population.

![summarybylot](https://user-images.githubusercontent.com/31755703/166865701-95ff6098-ad09-43f1-be7c-c02f2c96ceec.PNG)

Here's a graphical description.

![boxplot](https://user-images.githubusercontent.com/31755703/166868476-4ac14d00-46c5-4738-9023-3ddf52449927.PNG)

And the results

![againstpop](https://user-images.githubusercontent.com/31755703/167026824-f1e8929f-c781-4543-b824-90361d2f0f78.PNG)
![eachlotagainstpop](https://user-images.githubusercontent.com/31755703/167026843-83dd5b82-556e-41c5-a3ce-dd515e63f794.PNG)


## Study Design: MechaCar vs Competition

In the current situation, cars are expected to be as efficient as possible at the lowest cost possible. From our perspective we could say that the variables that need to be considered in order to compare the performance and preference of the MechaCar against other manufacturers at the moment of purchasing are the following:

* What metric or metrics are you going to test?
Cost
Efficiency Rating
Autonomy
Maintenance cost
Safety rating
Units sold

* What is the null hypothesis or alternative hypothesis?
H0: The user is not interested in Efficiency in order to purchase a car // H1: The user is quite interested in Efficiency in order to purchase a car.
* What statistical test would you use to test the hypothesis? And why?

One-Sample t-Test: to know if the mean of units sold is similar between the different efficiency ratings.

Multiple Linear regression: to know if other variables contribute to the decision whether to buy or not a specific car.

* What data is needed to run the statistical test?
Units sold during the same period of time for a specific customer segment and in a particular region. In order to reduce variability due to different terrain conditions or acquisition power.
