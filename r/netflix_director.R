setwd("~/RStudio/Netflix")
library(readr)
library(dplyr)
library(tidyr)
netflix_director <- read_csv("netflix_director.csv")

#split based on comma and put in list
split3<-strsplit(netflix_director$director, ",")

sapply(split3, length)

#rep = repeat data based on character length
df3<-data.frame(title=rep(netflix_director$title, sapply(split3, length)),
                type=rep(netflix_director$type, sapply(split3, length)),
                director=unlist(split3))

colSums(is.na(df3))
colSums(df3=="") #check for blank cell

#check for other duplicates
sum(duplicated(df3))

write_csv(df3, "Clean_Netflix_Director.csv")
