# MechaCar Statistical Analysis Using R

## Deliverable 1: Linear Regression to Predict MPG

### Overview

This analysis will attempt to identify and predict a miles per gallon (mpg)
performance provided the following parameters:

1. Vehicle Length
2. Vehicle weight
3. Spoiler angle
4. Ground Clearance
5. Drive Train (All Wheel or Standard)

A multi linear regression will be fitted to the above factors.

### Results

#### Correlation Matrix
![MPG Correlations](resources/d1cor.PNG)

A correlation matrix helps determine which factors may have an influence on MPG.
The only strong correlation factor is length with a value of 0.61. Ground clearance
height has a slight correlation of 0.33. This would suggest that the multi linear
regression should pick up length as having the most influence in predicting mpg.

#### Exploratory Analysis
![Plot of MPG vs Length](resources/length.png)

Visual inspection of mpg vs. length suggest a relationship between mpg and vehicle
length.

![Plot of MPG vs Ground Clearnce](resources/ground_clearance.png)

The plot of mpg vs ground clearance is noisier. It is not apparent there is a relationship between mpg and ground clearance.

#### Linear Regression to Predict MPG

![Summary of Linear Regression](resources/d1summary.PNG)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  As expected from the correlation matrix, vehicle length and ground clearance provided a non-random variance to mpg. This is determined by their p-values of 2.60e-12 and 5.21e-08 respectively. Their coefficients are most likely not 0.

* Is the slope of the linear model considered to be zero? Why or why not?

  The linear model is not 0 because length and ground clearance are not 0. Also, the overall p-value of the model is 5.35e-11. This indicates it is extremely likely that it isn't 0.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  The effectiveness depends on the needs and requirements of the customer requesting the model. Currently, this model accounts for 68% of the variation in mpg. This means that 32% of the variation is due to other unknown factors. A plot of the predicted mpg vs the measured mpg is provided for reference.

![Predicted vs. Actual](resources/d1predactual.png)

## Deliverable 2: Summary Statistics on Suspension Coils

The following analysis will perform summary statistics on production lots of suspension coils. Ideally, the values of the suspension coils should remain the same from lot to lot.
