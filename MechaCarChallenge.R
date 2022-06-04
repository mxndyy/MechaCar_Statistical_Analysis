#CHALLENGE 15: DELIVERABLE 1

# 3. Use the library() function to load the dplyr package
library(dplyr)

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#5. Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 

#CHALLENGE 15: DELIVERABLE 2

#2. Import and read in the Suspension_Coil.csv file as a table
mecha_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

#3 Create a total_summary  df using the summarize() function to get the mean,  median, variance and std dev of the suspension coil's PSI  column
total_summary <- mecha_coil  %>% summarize(Mean_PSI=mean(PSI),
                                           Median_PSI=var(PSI),
                                           Var_PSI=var(PSI),
                                           Num_Coil=n(), .groups = 'keep')

#4 Create a lot_summary df using the group_by() and the summarize() functions to group each mfg lot.
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=var(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Num_Coil=n(), .groups = 'keep')
#box plot: PSI Whole lot
plt1 <- ggplot(mecha_coil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

