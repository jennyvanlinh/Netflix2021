setwd("~/RStudio/Netflix")
library(readr)
library(dplyr)
library(tidyr)
netflix_listed <- read_csv("netflix_listed_in.csv")

#split based on comma and put in list
split2<-strsplit(netflix_listed$listed_in, ",")

sapply(split2, length)

#rep = repeat data based on character length
df2<-data.frame(title=rep(netflix_listed$title, sapply(split2, length)),
                type=rep(netflix_listed$type, sapply(split2, length)),
               rating=rep(netflix_listed$rating, sapply(split2, length)),
               duration=rep(netflix_listed$duration, sapply(split2, length)),
               listed_in=unlist(split2))

colSums(is.na(df2))
colSums(df2=="") #check for blank cell

#check for other duplicates
sum(duplicated(df2))

write_csv(df2, "Clean_Netflix_Listed_In.csv")
