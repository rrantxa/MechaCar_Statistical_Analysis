# Load the dplyr library
library(dplyr)

# Import the file. 
mecha_car <- read.csv("MechaCar_mpg.csv")

# Perform a linear regression on the data.
model = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)

# Determine the p-value and r-squared value for the linear regression model.
summary(model)
