library(tidyverse)
library(plyr)

#Import csv file
mpg_table <- read.csv(file="MechaCar_mpg.csv",check.names = F,stringsAsFactors = F)
names(mpg_table) <- c("vehicle_length", "vehicle_weight", "spoiler_angle", "ground_clearance", "AWD", "mpg")

head(mpg_table)
summary(mpg_table)

#Convert dataframe into numeric matrix
mpg_matrix <- as.matrix(mpg_table[,c("vehicle_length", "vehicle_weight", "spoiler_angle", "ground_clearance", "AWD", "mpg")])
cor(mpg_matrix)

#Create regressions for mpg
lm(mpg ~ vehicle_length + ground_clearance,data=mpg_table)
summary(lm(mpg ~ vehicle_length + ground_clearance,data=mpg_table))

lm(mpg ~ vehicle_length + ground_clearance + vehicle_weight,data=mpg_table)
summary(lm(mpg ~ vehicle_length + ground_clearance + vehicle_weight,data=mpg_table))

lm(mpg ~ vehicle_length + ground_clearance + vehicle_weight + AWD,data=mpg_table)
summary(lm(mpg ~ vehicle_length + ground_clearance + vehicle_weight + AWD,data=mpg_table))


#Import csv file
coil_table <- read.csv(file="Suspension_Coil.csv",check.names = F,stringsAsFactors = F)
head(coil_table)

#Create filtered table and convert collumn
filteredcoil <- coil_table[,c("Manufacturing_Lot", "PSI")]
filteredcoil$Manufacturing_Lot <- factor(filteredcoil$Manufacturing_Lot)

aov(PSI ~ Manufacturing_Lot, data=filteredcoil)
summary(aov(PSI ~ Manufacturing_Lot, data=filteredcoil))