#Import Dataframe Week4
readRDS(Week4.rds)

#R code from Assignment Week 4 in Jamovi

#descriptive statistics for categorical variables
jmv::descriptives(
  data = dataset,
  vars = vars(sex, research),
  freq = TRUE,
  bar = TRUE,
  mean = FALSE,
  median = FALSE,
  mode = TRUE,
  sd = FALSE)

#change of variable name: lvst4_recode(Jamovi) in lvst4reverse (R)


class(dataset$lvst4reverse)= 'Character'

jmv::descriptives(
  data = dataset,
  vars = vars(lvst1, lvst2, lvst3, lvst4, frst1, frst2, frst3, lvst4reverse), 
  freq = TRUE,
  bar = TRUE)

barplot(dataset$lvst4reverse)

#categorical statistics for categorical variables
#change of variable name: BMI(Jamovi) in bmi(R)


jmv::descriptives(
  data = dataset,
  vars = vars(height, weight, bmi, LOSS_total, FOSS_total, LOSS_mean, FOSS_mean, LOSS_total_z, FOSS_total_z, LOSS_mean_z, FOSS_mean_z),
  hist = TRUE,
  box = TRUE,
  range = TRUE,
  min = FALSE,
  max = FALSE)
