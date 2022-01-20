# Libraries and Working Directory ----
library(stats)
#install.packages("ggcorrplot")
library(ggcorrplot)
library(ggplot2)
library(tidyverse)


# Correlation Tests

setwd("~/Desktop/")
covid_data <- read.csv(file = "owid-covid-data.csv")


stats::cor(covid_data$total_vaccinations, covid_data$total_cases)


covid_data %>%
  select(total_vaccinations, total_cases) %>%
  ggplot(aes( x = total_vaccinations, y = total_cases)) +
  geom_count()



t.test(covid_data$total_vaccinations ~ covid_data$total_cases)

var(covid_data$total_vaccinations)
