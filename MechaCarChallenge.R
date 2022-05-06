# load needed libraries, using tidyverse as it also provides ggplot
library(tidyverse)

# Load the data, all csv files are ignored by git
mechadata <- read.csv("data/MechaCar_mpg.csv")

# Investigate correlations in the data
cor(mechadata)

# Visually inspect correlations
ggplot(mechadata,aes(y=mpg,x=vehicle_length))+geom_point()
ggplot(mechadata,aes(y=mpg,x=ground_clearance))+geom_point()
