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
