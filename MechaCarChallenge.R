# 1. Linear Regression to Predict MPG
# Load the dplyr library
library(dplyr)

# Import the MechaCar_mpg csv file.
mecha_car <- read.csv("MechaCar_mpg.csv")

# Perform a linear regression on the data.
model = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)

# Determine the p-value and r-squared value for the linear regression model.
summary(model)

# 2. Summary Statistics on Suspension Coils

# Import the suspension_coil file.
suspension_coil <- read.csv("Suspension_Coil.csv")

# Create a summary statistics dataframe for PSI.
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")

# Create summary statistics for each manufacturing lot.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")


# 3. T-Tests on Suspension Coils.

# Compare of the PSI across al manufacturing lots is different vs. population means.
t.test(suspension_coil$PSI, mu = 1500)

?t.test()

# Compare the PSI in each manufacturing lot.
Lot_1 = subset(suspension_coil, Manufacturing_Lot == "Lot1")
Lot_2 = subset(suspension_coil, Manufacturing_Lot == "Lot2")
Lot_3 = subset(suspension_coil, Manufacturing_Lot == "Lot3")

t.test(Lot_1$PSI, mu = 1500)
t.test(Lot_2$PSI, mu = 1500)
t.test(Lot_3$PSI, mu = 1500)

