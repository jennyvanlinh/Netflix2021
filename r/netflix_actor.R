# remove setwd for privacy reason
library(readr)
library(dplyr)
library(tidyr)
netflix_actor <- read_csv("netflix_actor.csv")

#split based on comma and put in list
split4<-strsplit(netflix_actor$cast, ",")

sapply(split4, length)

#rep = repeat data based on character length
df4<-data.frame(title=rep(netflix_actor$title, sapply(split4, length)),
                type=rep(netflix_actor$type, sapply(split4, length)),
                actor=unlist(split4))

colSums(is.na(df4))
colSums(df4=="") #check for blank cell

#check for other duplicates
sum(duplicated(df4))

#remove duplicates
df4<-unique(df4)

write_csv(df4, "Clean_Netflix_Actor.csv")
