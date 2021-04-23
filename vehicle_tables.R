library(tidyverse)
library(gt)

#first assay, condition stats rkl04-24
rkl0424_conditions <- read_csv("/Users/sophiavarady/Downloads/tablerkl0424conditions.csv")

#creating table
rkl0424_conditions <- rkl0424_conditions %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions Rkl04-24")) %>%
  
  cols_align(align = "center", columns = TRUE)

#first assay, condition stats BETWEEN groups rkl04-24
rkl0424_bw_conditions <- read_csv("/Users/sophiavarady/Downloads/tablerkl0424_bw_conditions.csv")

#creating table
rkl0424_bw_conditions <- rkl0424_bw_conditions %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Means Between Conditions Rkl04-24")) %>%
  
  cols_align(align = "center", columns = TRUE)


#first assay, condition stats rkl04-26
rkl0426_conditions <- read_csv("/Users/sophiavarady/Downloads/tablerkl0426conditions.csv")

#creating table
rkl0426_conditions <- rkl0426_conditions %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions Rkl04-26")) %>%
  
  cols_align(align = "center", columns = TRUE)

#first assay, condition stats BETWEEN groups rkl04-26
rkl0426_bw_conditions <- read_csv("/Users/sophiavarady/Downloads/tablerkl0426_bw_conditions.csv")

#creating table
rkl0426_bw_conditions <- rkl0426_bw_conditions %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Means Between Conditions Rkl04-26")) %>%
  
  cols_align(align = "center", columns = TRUE)



#first assay, condition stats 4ht
fourht_conditions <- read_csv("/Users/sophiavarady/Downloads/table4htconditions.csv")

#creating table
fourht_conditions <- fourht_conditions %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions 4HT")) %>%
  
  cols_align(align = "center", columns = TRUE)

#Trial 3, bw conditions rkl04-24 

bw_rkl0424 <- read_csv("/Users/sophiavarady/Downloads/bw_rkl0424_trial3.csv")

#creating table

bw_rkl0424 <- bw_rkl0424 %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions Rkl04-24 (Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 3, for condition rkl04-24

cond_rkl0424 <- read_csv("/Users/sophiavarady/Downloads/cond_rkl0424_trial3.csv")

cond_rkl0424 <- cond_rkl0424 %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl04-24 (Absorbance; Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 3 bw cond 4ht


bw_4ht_trial3 <- read_csv("/Users/sophiavarady/Downloads/bw_4ht_trial3.csv")

bw_4ht_trial3 <- bw_4ht_trial3 %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions 4HT (Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)


#trial 3 4ht condition stat in ABSORBANCE

cond_4ht_trial3_abs <- read_csv("/Users/sophiavarady/Downloads/cond_4ht_trial3_abs.csv")

cond_4ht_trial3_abs <- cond_4ht_trial3_abs %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition 4HT (Absorbance; Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 3 4ht condition stat in cell count

cond_4ht_trial3_cellcount <- read_csv("/Users/sophiavarady/Downloads/cond_4ht_trial3_cellcount.csv")

cond_4ht_trial3_cellcount <- cond_4ht_trial3_cellcount %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition 4HT (Cell Count; Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 3 rkl04-24 for cond in cell count 

cond_rkl0424_trial3_cellcount <- read_csv("/Users/sophiavarady/Downloads/cond_rkl0424_trial3_cellcount.csv")

cond_4ht_trial3_cellcount <- cond_rkl0424_trial3_cellcount %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl04-24 (Cell Count; Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

# trial 3 bw cond rkl04-26

bw_cond_rkl0426_trial3 <- read_csv("/Users/sophiavarady/Downloads/bw_cond_rkl0426_trial3.csv")

bw_cond_rkl0426_trial3 <- bw_cond_rkl0426_trial3 %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions Rkl04-26 (Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)


#trial 3 for condition rkl04-26 absorbance 

cond_rkl0426_trial3_abs <- read_csv("/Users/sophiavarady/Downloads/cond_rkl0426_trial3_abs.csv")

cond_rkl0426_trial3_abs <- cond_rkl0426_trial3_abs %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl04-26 (Absorbance; Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 3 for condition rkl04-26 cell count

vehicle_trial3_rkl0424 <- read_csv("/Users/sophiavarady/Downloads/vehicle_trial3_rkl0424.csv")

vehicle_trial3_rkl0424 <- vehicle_trial3_rkl0424 %>%
  gt() %>%
  tab_header(
    title = md("Vehicle Control vs. Cells Only Rkl04-24 (Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 3 vehicle control rkl0424 

vehicle_trial3_rkl0426 <- read_csv("/Users/sophiavarady/Downloads/vehicle_trial3_rkl0426.csv")

vehicle_trial3_rkl0426 <- vehicle_trial3_rkl0426 %>%
  gt() %>%
  tab_header(
    title = md("Vehicle Control vs. Cells Only Rkl04-26 (Trial 3)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#Trial 4 rkl0282 bw conditions 

bw_rkl0282_trial4 <- read_csv("/Users/sophiavarady/Downloads/bw_rkl0282_trial4.csv")

bw_rkl0282_trial4 <- bw_rkl0282_trial4 %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions Rkl02-82 (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 4 rkl0282 for condition cell count and absorbance 

cond_rkl0282_trial4_abs <- read_csv("/Users/sophiavarady/Downloads/cond_rkl0282_trial4_abs.csv")

cond_rkl0282_trial4_abs <- cond_rkl0282_trial4_abs %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl02-82 (Absorbance; Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

cond_rkl0282_trial4_aellcount <- read_csv("/Users/sophiavarady/Downloads/cond_rkl0282_trial4_cellcount.csv")

cond_rkl0282_trial4_aellcount <- cond_rkl0282_trial4_aellcount %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl02-82 (Cell Count; Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)


#rkl0424 bw cond
bw_trial4_rkl0424 <- read_csv("/Users/sophiavarady/Downloads/bw_trial4_rkl0424.csv")

bw_trial4_rkl0424 <- bw_trial4_rkl0424 %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions Rkl04-24 (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#Trial 4 rkl0424 for condition in abs and cell count 

cond_trial4_rkl0424_abs <- read_csv("/Users/sophiavarady/Downloads/cond_trial4_rkl0424_abs.csv")

cond_trial4_rkl0424_abs <- cond_trial4_rkl0424_abs %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl04-24 (Absorbance; Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

cond_trial4_rkl0424_aellcount <- read_csv("/Users/sophiavarady/Downloads/cond_trial4_rkl0424_cellcount.csv")

cond_trial4_rkl0424_aellcount <- cond_trial4_rkl0424_aellcount %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl04-24 (Cell Count; Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)


# Trial 4 bw cond 4ht

bw_trial4_4ht <- read_csv("/Users/sophiavarady/Downloads/bw_trial4_4ht.csv")

bw_trial4_4ht <- bw_trial4_4ht %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions 4HT (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#Trial 4 4ht cond cell count

cond_trial4_4ht_cellcount <- read_csv("/Users/sophiavarady/Downloads/cond_trial4_4ht_cellcount.csv")

cond_trial4_4ht_cellcount <- cond_trial4_4ht_cellcount %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition 4HT (Cell Count; Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

# Trial 4 bw cond rkl04-26

bw_trial4_rkl0426 <- read_csv("/Users/sophiavarady/Downloads/bw_trial4_rkl0426.csv")

bw_trial4_rkl0426 <- bw_trial4_rkl0426 %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Comparisons of Conditions Rkl04-26 (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 4 cond rkl0426 cell count

cond_trial4_rkl0426_cellcount <- read_csv("/Users/sophiavarady/Downloads/cond_trial4_rkl0426_cellcount.csv")

cond_trial4_rkl0426_cellcount <- cond_trial4_rkl0426_cellcount %>%
  gt() %>%
  tab_header(
    title = md("Statistics for Each Dose Condition Rkl04-26 (Cell Count; Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)


#trial 4 vehicle control rkl0282 

vehicle_tria4_rkl0282 <- read_csv("/Users/sophiavarady/Downloads/vehicle_trial4_rkl0282.csv")

vehicle_tria4_rkl0282 <- vehicle_tria4_rkl0282 %>%
  gt() %>%
  tab_header(
    title = md("Vehicle Control vs. Cells Only Rkl02-82 (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 4 vehicle control rkl0424

vehicle_trial4_rkl0424 <- read_csv("/Users/sophiavarady/Downloads/vehicle_trial4_rkl0424.csv")

vehicle_trial4_rkl0424 <- vehicle_trial4_rkl0424 %>%
  gt() %>%
  tab_header(
    title = md("Vehicle Control vs. Cells Only Rkl04-24 (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)


#trial 4 vehicle control 4ht

vehicle_trial4_4ht <- read_csv("/Users/sophiavarady/Downloads/vehicle_trial4_4ht.csv")

vehicle_trial4_4ht <- vehicle_trial4_4ht %>%
  gt() %>%
  tab_header(
    title = md("Vehicle Control vs. Cells Only 4HT (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)

#trial 4 vehicle control rkl04-26

vehicle_trial4_rkl0426 <- read_csv("/Users/sophiavarady/Downloads/vehicle_trial4_rkl0426.csv")

vehicle_trial4_rkl0426 <- vehicle_trial4_rkl0426 %>%
  gt() %>%
  tab_header(
    title = md("Vehicle Control vs. Cells Only Rkl04-26 (Trial 4)")) %>%
  
  cols_align(align = "center", columns = TRUE)


