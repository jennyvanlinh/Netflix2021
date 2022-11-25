# Introduction

This visualisation will give you a glimpse of Netflix's TV Shows and Movies information as of 2021. Over 8000 TV Shows and Movies have been used for this visualisation.

# Steps

## Step 1: Clean the data
- Got the dataset from [Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows) -> netflix_titles.csv
- Cleaned netflix_titles using R -> netflix.R
- Saved new CSV file -> Clean_Netflix_Data.csv

**Step 2-5 are repetition

## Step 2: Clean country data for map
- Added Clean_Netflix_Data.csv onto Tableau
- Extract title, type and country columns from Clean_Netflix_Data.csv to create country file -> Netflix_Country.csv
- Used R to split each country based on comma and insert row for each splitted country -> netflix_country.R
- Saved new CSV file -> Clean_Netflix_Country.csv
- Added Clean_Netflix_Country.csv onto Tableau
- Form a logical relationship between Clean_Netflix_Data.csv and Clean_Netflix_Country.csv

## Step 3: Clean genre data for tree map
- Extract title, type, listed_in, rating and duration columns from Clean_Netflix_Data.csv to create genre file -> Netflix_Listed_In.csv
- Used R to split each genre based on comma and insert row for each splitted genre -> netflix_listed_in.R
- Saved new CSV file -> Clean_Netflix_Listed_In.csv
- Added Clean_Netflix_Listed_In.csv onto Tableau
- Form a logical relationship between Clean_Netflix_Data.csv and Clean_Netflix_Listed_In.csv

## Step 4: Clean director data for bar chart
- Extract title, type and director columns from Clean_Netflix_Data.csv to create director file -> Netflix_Director.csv
- Used R to split each director name based on comma and insert row for each splitted director -> netflix_director.R
- Saved new CSV file -> Clean_Netflix_Director.csv
- Added Clean_Netflix_Director.csv onto Tableau
- Form a logical relationship between Clean_Netflix_Data.csv and Clean_Netflix_Director.csv

## Step 5: Clean cast data for bar chart
- Extract title, type and cast columns from Clean_Netflix_Data.csv to create actor file -> Netflix_Actor.csv
- Used R to split each cast member based on comma and insert row for each splitted member -> netflix_actor.R
- Saved new CSV file -> Clean_Netflix_Actor.csv
- Added Clean_Netflix_Actor.csv onto Tableau
- Form a logical relationship between Clean_Netflix_Data.csv and Clean_Netflix_Actor.csv

## Step 6: Create visualisation
- The visualisation can be accessed from [here](https://public.tableau.com/app/profile/jennyvanlinh/viz/Netflix_16693436228000/Dashboard1)

