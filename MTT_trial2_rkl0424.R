---
  title: "MTT results rkl04-24"
output: html_document
editor_options: 
  chunk_output_type: console
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)
library(tidyr)
```

```{r}
data_raw_rkl04_24 <- read_csv("/Users/sophiavarady/Desktop/MTT_rkl0424_round2.csv")
```

## data prep

What I did:
  - removed stray `%` symbols
- converted Concentration_nM to a factor
- changed your `full_data` to only include observations with 0 of the three controls present

```{r}
data_rkl04_24 <- data_raw_rkl04_24 %>% 
  mutate(concentration_nM = str_remove(concentration_nM, "%"),
         concentration_nM = format(concentration_nM, scientific = FALSE)) 
# str_remove is just removing the stray `%` symbols that were causing you problems when
# converting the variable to a different type. 
concentration_nM = as.factor(concentration_nM))
# I changed it to a factor here which makes sense if you want the levels to 
# be discretely shown on the x-axis


# creating control dataframe (your code!)
control_only_rkl0424 <- data_raw_rkl04_24  %>% 
  filter( medium_only == "yes" | cells_only == "yes" | dmso_control == "yes")

# creating non-control dataframe
# here I changed your code from using or (|) to and (&) this ensures that none of the controls 
# are being used, if this isn't what you were looking for you can definitely change it back!
full_data_rkl0424 <- data_raw_rkl04_24 %>% 
  filter(medium_only == "no" & cells_only == "no" & dmso_control == "no")
full_data_rkl0424 %>%
  mutate(concentration_nM = as.factor(concentration_nM))

```

## plotting

For the most part the only thing holding you back was the incorrect data type of Concentration_nm

Some things that I did:
  - added titles
- removed legends

```{r}

rkl04_24 <- full_data_rkl0424 %>%
  mutate(concentration_nM = as_factor(concentration_nM))%>%
  mutate(concentration_nM = fct_relevel(concentration_nM, c('3.125', '12.25', '50', '100')))

# plots for non-control 550 subtracted abs. all together

ggplot(rkl04_24, aes(
  x = concentration_nM, 
  y = absorbance_550,
  color = SERM)
) +
  geom_point(alpha = 0.7, show.legend = T) +
  scale_y_log10() +
  #facet_wrap(~plate_number) +
  labs(title = "rkl04-24 MTT assay", x= "Ligand concentration (nM)", y= "Absorbance (550 nm)") 


#should make a graph comparing 100nM treatment vs 4oht and e2 controls


ggplot(rkl04_24, aes(
  x = concentration_nM, 
  y = absorbance_550,
  color = SERM)
) +
  geom_point(alpha = 0.7, show.legend = T) +
  #scale_y_log10() +
  facet_wrap(~plate_number) +
  labs(title = "rkl04-24 MTT assay by plate replicates", x= "Ligand concentration (nM)", y= "Absorbance (550 nm)")

#combining control and treatment graphs
ggplot(full_data, aes(
  x = concentration_nM, 
  y = subtracted_abs,
  color = SERM)
) +
  geom_point(alpha = 0.7, show.legend = F) +
  geom_point(inheret.aes= FALSE, data = control_only_new, mapping = aes(x = concentration_nM, y = subtracted_abs, color = control), na.rm = FALSE) +
  facet_wrap(~ plate_number) + 
  labs(title = "4OHT MTT assay", x= "Ligand concentration (nM)", y= "Absorbance (550 nM)") 

#make 3 separate for 3 plates by facet_wrap (~ plate_number) instead of (~SERM), which gives all together



## another idea for control

Here I created a new variable so that we could color the points according to which treatment was used.

```{r}
control_only_new_rkl0424 <- control_only_rkl0424 %>% 
  # created a new variable called control that will show which control is present
  mutate(control = case_when(medium_only == "yes" ~ "medium_only", 
                             cells_only == "yes" ~ "cells_only",
                             dmso_control == "yes" ~ "dmso_control",
                             T ~ "none"))

#trying to make new df to allow control only box plot (comparing controls)
controls_only_longer_rkl0424 <- control_only_new_rkl0424 %>%
  select(c(SERM, cells_only, medium_only, dmso_control, subtracted_abs)) 
pivot_longer(controls_only_longer_rkl0424, 
             cols = c(cells_only, medium_only, dmso_control), names_to = "control_type", values_to = "yes_or_no") %>%
  filter(yes_or_no == "yes")
ggplot(controls_only_longer_rkl0424, aes(x=control_type, y=subtracted_absorbance))+
  geom_boxplot()

#controls and treatments 


# now we can make a plot where the color signifies which control was used!
ggplot(control_only_new_rkl0424, aes(x = concentration_nM, y = absorbance_550, color = control)) +
  geom_point() +
  facet_wrap(~ plate_number) + 
  #scale_y_log10() +
  labs(title = "MTT assay control treatments rkl04-24", x = "Concentration (nM)", y = "Absorbance (500nm)") 

# trying to combine controls with treatment plots
geom_point(control_only_new_rkl0424, mapping = aes(x = concentration_nM, y = subtracted_abs, color = control)) +
  facet_wrap(~ plate_number) + 
  labs(title = "MTT assay control treatments", x = "Concentration (nM)", y = "Absorbance (500nm)") 











```






