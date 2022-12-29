#### PART 1 ####

# Import relevant libraries
install.packages('tidyverse')
library(dplyr)

# Import and read csv file as a dataframe
df <- read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)

# Create a linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)

# Determine the p-value and r2-value for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df))

#### PART 2 ####

# Import and read csv file as a dataframe
susp_df <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe
total_summary <- susp_df %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create a lot_summary dataframe
lot_summary <- susp_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#### PART 3 ####

# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI

t.test((susp_df$PSI),mu=1500) # p-value = 0.06, meaning the PSI across all lots is not statistically different from population mean

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

# Lot 1
t.test(subset(susp_df, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# Lot 2
t.test(subset(susp_df, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# Lot 3
t.test(subset(susp_df, Manufacturing_Lot=="Lot3")$PSI, mu=1500)