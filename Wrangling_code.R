knitr::opts_chunk$set(echo = TRUE)
pacman::p_load("bayesplot","knitr","arm","ggplot2","rstanarm")
library(tidyverse)

#read first indicator data file
library(readxl)
population_total <- read_excel("population_total.xlsx")
View(population_total)
#read second indicator data file
library(readxl)
child_mortality_0_5_year_olds_dying_per_1000_born <- read_excel("child_mortality_0_5_year_olds_dying_per_1000_born.xlsx")
View(child_mortality_0_5_year_olds_dying_per_1000_born)


# use left-join function to wrangle two data files
install.packages("plyr")
library(plyr)
total<-join(child_mortality_0_5_year_olds_dying_per_1000_born,population_total,by = NULL, type = 'left', match = 'all')
print(total)

# to change data in tibble format.
install.packages("tibble")
library(tibble)
t_total<-tibble(total)
print(t_total)