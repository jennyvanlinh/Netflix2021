setwd("~/RStudio/Netflix")
library(readr)
library(dplyr)
library(tidyr)
netflix_titles <- read_csv("netflix_titles.csv")

str(netflix_titles)

# count how many NA in each column and summarise into a table 
colSums(is.na(netflix_titles))

#fill NA with Unknown values (director, cast, country,  date_added)
netflix_titles$director<-replace_na(netflix_titles$director, "Unknown")
netflix_titles$cast<-replace_na(netflix_titles$cast, "Unknown")
netflix_titles$description<-replace_na(netflix_titles$description, "Unknown")
netflix_titles$country<-replace_na(netflix_titles$country, "Unknown")
netflix_titles$date_added<-replace_na(netflix_titles$date_added, "Unknown")

netflix_titles<-drop_na(netflix_titles)

#check duplicate
sum(duplicated(netflix_titles))
sum(duplicated(netflix_titles$title))
sum(duplicated(netflix_titles$show_id))

#remove duplicates based on title
netflix_titles<-netflix_titles[!duplicated(netflix_titles$title), ]

write_csv(netflix_titles, "Clean_Netflix_Data.csv")



















