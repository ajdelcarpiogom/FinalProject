df <- read.csv("C:/Users/andre/Documents/Analysis_Projects/FinalProject/owid-covid-data.csv")

df$date <- as.Date(df$date, "%m/%d/%Y")


asia <- subset(df, continent == "Asia")
europe <- subset(df, continent == "Europe")
northa <- subset(df, continent == "North America")
southa <- subset(df, continent == "South America")
africa <- subset(df, continent == "Africa")
oceania <- subset(df, continent == "Oceania")

### What is the correlation between the number of tests administered and the total number of cases?

AFG <- subset(asia, location == "Afghanistan")
