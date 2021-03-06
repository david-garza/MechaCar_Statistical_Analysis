################################################################################
# Deliverable 1
################################################################################

# load needed libraries, using tidyverse as it also provides ggplot
library(tidyverse)

# Load the data, all csv files are ignored by git
mechadata <- read.csv("data/MechaCar_mpg.csv")

# Investigate correlations in the data
cor(mechadata)

# Visually inspect correlations
ggplot(mechadata,aes(y=mpg,x=vehicle_length))+geom_point()
ggplot(mechadata,aes(y=mpg,x=ground_clearance))+geom_point()

# Linear regression modeling
model<-lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,mechadata)

# Model summary
summary(model)

################################################################################
# Deliverable 2
################################################################################

# Import suspension data
coil <-read.csv("data/Suspension_Coil.csv")

# Create total summary table
total_summary<-coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create summary data by lot
lot_summary<-coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

################################################################################
# Deliverable 3
################################################################################

# First define the test standard as a variable for the t-test
standard<-1500

# Load coil data to ensure a clean data set
coil <-read.csv("data/Suspension_Coil.csv")

# Perform one sample t.test on all of the coils assuming standard value for mu.
t.test(coil$PSI,mu=standard)

# Perform one sample t.test on each lot using the t.test subset argument
t.test(PSI~1,coil,mu=standard,subset=coil["Manufacturing_Lot"]=="Lot1")
t.test(PSI~1,coil,mu=standard,subset=coil["Manufacturing_Lot"]=="Lot2")
t.test(PSI~1,coil,mu=standard,subset=coil["Manufacturing_Lot"]=="Lot3")
