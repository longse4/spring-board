library(dplyr)
library(tidyr)
titanic_original <- read.csv("~/R/R-Studio/titanic_original.csv")
tbl_df(titanic_original)
mean_age <- colMeans(titanic_original[5], na.rm=TRUE)
titanic_original$embarked[which(is.na(titanic_original$embarked))] <- 'S'
titanic_original$age[is.na(titanic_original$age)] <- 29.88113 
titanic_original$boat[titanic_original$boat== ""]<-NA
titanic_original$has_cabin_number <-c(ifelse(titanic_original$cabin != "",1,0))
head(titanic_original, n=20)