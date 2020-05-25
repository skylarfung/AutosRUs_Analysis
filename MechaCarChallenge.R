library(tidyverse)

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

#Create summary statustucal table
coil_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), PSI_Variance = var(PSI), PSI_StdDev = sd(PSI))

#Create filtered table and convert collumn
filteredcoil <- coil_table[,c("Manufacturing_Lot", "PSI")]
filteredcoil$Manufacturing_Lot <- factor(filteredcoil$Manufacturing_Lot)
aov(PSI ~ Manufacturing_Lot, data=filteredcoil)
summary(aov(PSI ~ Manufacturing_Lot, data=filteredcoil))

coil_filt <- coil_table[,c("Manufacturing_Lot", "PSI")]
coil_filt$lot <- apply(coil_filt, 1, FUN = function(x) if (x[1]=="Lot1") 1 else if (x[1]=="Lot2") 2 else 3)
coil_filt$Manufacturing_Lot <- NULL
aov(PSI ~ lot, data=coil_filt)
summary(aov(PSI ~ lot, data=coil_filt))