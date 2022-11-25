library(readr)
library(dplyr)
library(tidyr)
netflix_country <- read_csv("netflix_country.csv")

#split based on comma and put in list
split<-strsplit(netflix_country$country, ",")

sapply(split, length)

#rep = repeat data based on character length
df<-data.frame(title=rep(netflix_country$title, sapply(split, length)),
                     country=unlist(split),
           type=rep(netflix_country$type, sapply(split, length)))

colSums(is.na(df))
colSums(df=="") #check for blank cell

#Since we have declared blank countries as Unknown before, if there is 
#blank countries now it means that there are space before comma when split,
#meaning that title will be duplicated

#remove duplicates based on empty country
df<-df[!df$country=="", ]

#check for other duplicates
sum(duplicated(df))

write_csv(df, "Clean_Netflix_Country.csv")







