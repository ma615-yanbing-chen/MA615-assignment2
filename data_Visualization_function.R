# Data Visualization
pacman::p_load("bayesplot","knitr","arm","ggplot2","rstanarm")
library(pacman)
library(ggplot2)
install.packages("tibble")
library(tibble)
t_total<-tibble(total)
print(t_total)
View(t_total)
data(t_total)
new_1<-t_total[c(33,80),203:213] # select first dataset to graph
data_1<-new_1
new_2<-population_total[c(33,80),203:213] # select second dataset to graph
data_2<-new_2

# build the first dataset
year<-c(2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010)
China<-c(34.2,31.5,28.9,26.3,24.0,21.9,20.1,18.5,17.0,15.8,14.6)
India<-c(88.0,84.5,81.1,77.7,74.4,71.1,67.9,64.7,61.4,58.2,55.1)
dd_1<-data.frame(year=year,China=China,India=India)
summary(dd_1)
print(dd_1)

# build the second dataset
year<-c(2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010)
China<-c(1300000000,1310000000,1320000000,1320000000,1330000000,1340000000,1350000000,1350000000,1360000000,1370000000,1380000000)
India<-c(1080000000,1090000000,1110000000,1130000000,1150000000,1170000000,1180000000,1200000000,1220000000,1230000000,1250000000)
dd_2<-data.frame(year=year,China=China,India=India)
summary(dd_2)
print(dd_2)

#The Children's Mortality of two countries
ggplot(dd_1,aes(x = year,y = Mortality))+
  geom_point(aes(y = China),)+
  geom_line(aes(y = China,color="China"))+
  geom_point(aes(y = India))+
  geom_line(aes(y = India,color="India"))+
  labs(title = "The under 5-year-old Children's Mortality of two Countries", x = "Year",y ="Children Mortality")
  theme(plot.title = element_text(hjust = 0.5))

# The population of two countries
 ggplot(dd_2,aes(x = year,y = Population))+
    geom_point(aes(y = China),)+
    geom_line(aes(y = China,color="China"))+
    geom_point(aes(y = India))+
    geom_line(aes(y = India,color="India"))+
    labs(title = "The Population of two Countries", x = "Year", y ="Population")
 theme(plot.title = element_text(hjust = 0.5))







  


 




