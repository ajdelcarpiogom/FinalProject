# Libraries and Working Directory ----
library(stats)
#install.packages("ggcorrplot")
#install.packages("kableExtra")
library(kableExtra)
library(ggcorrplot)
library(ggplot2)
library(tidyverse)


# Correlation Tests

setwd("~/Desktop/")
covid_data <- read.csv(file = "covid_data.csv")

clean_data <- covid_data %>%
  select(location, new_vaccinations, total_cases)%>%
  group_by(location)
  

clean_data %>%
  select(new_vaccinations, total_cases) %>%
  ggplot(aes( x = new_vaccinations, y = total_cases)) +
  geom_count()

unique (clean_data$location)

africa <- clean_data %>% 
  filter (location == "Africa")

asia <- clean_data %>% 
  filter (location == "Asia")

europe <- clean_data %>% 
  filter (location == "Europe")

north_america <- clean_data %>% 
  filter (location == "North America")

oceania <- clean_data %>%
  filter (location == "Oceania")

south_america <- clean_data %>% 
  filter (location == "South America")

##Total
stats::cor(covid_data$new_vaccinations, covid_data$total_cases)

##Africa
stats::cor(africa$new_vaccinations, africa$total_cases)

africa %>%
  select(new_vaccinations, total_cases) %>%
  ggplot(aes( x = new_vaccinations, y = total_cases)) +
  geom_count()

##Asia
stats::cor(asia$new_vaccinations, asia$total_cases)

asia %>%
  select(new_vaccinations, total_cases) %>%
  ggplot(aes( x = new_vaccinations, y = total_cases)) +
  geom_count()
##Europe
stats::cor(europe$new_vaccinations, europe$total_cases)

europe %>%
  select(new_vaccinations, total_cases) %>%
  ggplot(aes( x = new_vaccinations, y = total_cases)) +
  geom_count()
##Oceania
stats::cor(oceania$new_vaccinations, oceania$total_cases)

oceania %>%
  select(new_vaccinations, total_cases) %>%
  ggplot(aes( x = new_vaccinations, y = total_cases)) +
  geom_count()

##north america
stats::cor(north_america$new_vaccinations, north_america$total_cases)

north_america %>%
  select(new_vaccinations, total_cases) %>%
  ggplot(aes( x = new_vaccinations, y = total_cases)) +
  geom_count()
##south america
stats::cor(south_america$new_vaccinations, south_america$total_cases)

south_america %>%
  select(new_vaccinations, total_cases) %>%
  ggplot(aes( x = new_vaccinations, y = total_cases)) +
  geom_count()

##t.test(covid_data$new_vaccinations ~ covid_data$total_cases)

var(covid_data$new_vaccinations)
