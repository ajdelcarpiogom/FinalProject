# FinalProject

## Introduction

The COVID-19 pandemic became the first non-influenza pandemic to affect more than 200 countries as declared in March of 2020. It has caused a worldwide panic since it negatively affected the economy, employment, healthcare systems, and more. In December 2020, the first COVID vaccine became FDA approved and available to those of 16 years and older which helped contribute to a decrease in hospitalizations all around the world as well as a reduction in cases.

## Overview

Our topic was to develop the analysis of vaccination efficiency and testing efficiency of COVID-19 worldwide. Given the new variants of COVID-19, it’s important to test the efficiency of vaccinations and tests in order to be able to analyze how these have affected the number of cases and deaths worldwide. Not only that, but we wanted to see the correlation between the number of cases confirmed and if that predicts the number of deaths. Another part of the project was to see the change in number of cases once the COVID-19 vaccine was released.
We decided to retrieve data from Our World in Data (OWID) as a provisional database as well as the geographical data from the Johns Hopkins University COVID-19 database. Luckily enough, OWID began to use the data from JHU in November of 2020 so using both these databases won’t deter us from mixing data.

##### Questions we hope to answer with the data:

* What is the correlation between the number of tests administered and the total number of new covid-19 cases?
* What relation exists between tests administered and total number of deaths?
* Does an increase in the number of vaccinated people have an effect on total new covid-19 cases?
* How does each variant contribute to the number of cases and deaths?

## Link to Data and Resources:

* “Our World in Data”(OWID) ( https://ourworldindata.org). 
* OWID Github page (https://github.com/owid/covid-19-data).
* "Johns Hopkins Dashboard (https://www.arcgis.com/apps/dashboards/bda7594740fd40299423467b48e9ecf6)


## Machine Learning Model Description:

After many suggested ideas for the prevention of COVID-19 such as the vaccination, we will be building supervised machine learning models in order to visualize the statistics and to test whether the data is enough evidence to support our hypotheses aforementioned above.
For these models, we will be primarily using R/RStudio and Python in Google Colab/Jupyter Notebook. 

## Description of the data
| column | source | category | description |
| ------------- | ------------- |  ------------- | ------------- |
| iso_code | International Organization for Standardization | Others | ISO 3166-1 alpha-3  three-letter country codes |
| continent | Our World in Data|Others|Continent of the geographical location
location|Our World in Data|Others|Geographical location
date|Our World in Data|Others|Date of observation
total_cases|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed cases|Total confirmed cases of COVID-19
new_cases|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed cases|New confirmed cases of COVID-19
new_cases_smoothed|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed cases|New confirmed cases of COVID-19 (7-day smoothed)
total_deaths|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed deaths|Total deaths attributed to COVID-19
new_deaths|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed deaths|New deaths attributed to COVID-19
new_deaths_smoothed|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed deaths|New deaths attributed to COVID-19 (7-day smoothed)
total_cases_per_million|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed cases|"Total confirmed cases of COVID-19 per 1,000,000 people"
new_cases_per_million|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed cases|"New confirmed cases of COVID-19 per 1,000,000 people"
new_cases_smoothed_per_million|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed cases|"New confirmed cases of COVID-19 (7-day smoothed) per 1,000,000 people"
total_deaths_per_million|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed deaths|"Total deaths attributed to COVID-19 per 1,000,000 people"
new_deaths_per_million|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed deaths|"New deaths attributed to COVID-19 per 1,000,000 people"
new_deaths_smoothed_per_million|COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University|Confirmed deaths|"New deaths attributed to COVID-19 (7-day smoothed) per 1,000,000 people"
reproduction_rate|Arroyo Marioli et al. (2020). https://doi.org/10.2139/ssrn.3581633|Reproduction rate|Real-time estimate of the effective reproduction rate (R) of COVID-19. See https://github.com/crondonm/TrackingR/tree/main/Estimates-Database
icu_patients|"National government reports and European CDC"|Hospital & ICU|Number of COVID-19 patients in intensive care units (ICUs) on a given day
icu_patients_per_million|"National government reports and European CDC"|Hospital & ICU|"Number of COVID-19 patients in intensive care units (ICUs) on a given day per 1,000,000 people"
hosp_patients|"National government reports and European CDC"|Hospital & ICU|Number of COVID-19 patients in hospital on a given day
hosp_patients_per_million|"National government reports and European CDC"|Hospital & ICU|"Number of COVID-19 patients in hospital on a given day per 1,000,000 people"
weekly_icu_admissions|"National government reports and European CDC"|Hospital & ICU|Number of COVID-19 patients newly admitted to intensive care units (ICUs) in a given week
weekly_icu_admissions_per_million|"National government reports and European CDC"|Hospital & ICU|"Number of COVID-19 patients newly admitted to intensive care units (ICUs) in a given week per 1,000,000 people"
weekly_hosp_admissions|"National government reports and European CDC"|Hospital & ICU|Number of COVID-19 patients newly admitted to hospitals in a given week
weekly_hosp_admissions_per_million|"National government reports and European CDC"|Hospital & ICU|"Number of COVID-19 patients newly admitted to hospitals in a given week per 1,000,000 people"
total_tests|National government reports|Tests & positivity|Total tests for COVID-19
new_tests|National government reports|Tests & positivity|New tests for COVID-19 (only calculated for consecutive days)
total_tests_per_thousand|National government reports|Tests & positivity|"Total tests for COVID-19 per 1,000 people"
new_tests_per_thousand|National government reports|Tests & positivity|"New tests for COVID-19 per 1,000 people"
new_tests_smoothed|National government reports|Tests & positivity|"New tests for COVID-19 (7-day smoothed). For countries that don't report testing data on a daily basis, we assume that testing changed equally on a daily basis over any periods in which no data was reported. This produces a complete series of daily figures, which is then averaged over a rolling 7-day window"
new_tests_smoothed_per_thousand|National government reports|Tests & positivity|"New tests for COVID-19 (7-day smoothed) per 1,000 people"
positive_rate|National government reports|Tests & positivity|"The share of COVID-19 tests that are positive, given as a rolling 7-day average (this is the inverse of tests_per_case)"
tests_per_case|National government reports|Tests & positivity|"Tests conducted per new confirmed case of COVID-19, given as a rolling 7-day average (this is the inverse of positive_rate)"
tests_units|National government reports|Tests & positivity|Units used by the location to report its testing data
total_vaccinations|National government reports|Vaccinations|Total number of COVID-19 vaccination doses administered
people_vaccinated|National government reports|Vaccinations|Total number of people who received at least one vaccine dose
people_fully_vaccinated|National government reports|Vaccinations|Total number of people who received all doses prescribed by the vaccination protocol
total_boosters|National government reports|Vaccinations|Total number of COVID-19 vaccination booster doses administered (doses administered beyond the number prescribed by the vaccination protocol)
new_vaccinations|National government reports|Vaccinations|New COVID-19 vaccination doses administered (only calculated for consecutive days)
new_vaccinations_smoothed|National government reports|Vaccinations|"New COVID-19 vaccination doses administered (7-day smoothed). For countries that don't report vaccination data on a daily basis, we assume that vaccination changed equally on a daily basis over any periods in which no data was reported. This produces a complete series of daily figures, which is then averaged over a rolling 7-day window"
total_vaccinations_per_hundred|National government reports|Vaccinations|Total number of COVID-19 vaccination doses administered per 100 people in the total population
people_vaccinated_per_hundred|National government reports|Vaccinations|Total number of people who received at least one vaccine dose per 100 people in the total population
people_fully_vaccinated_per_hundred|National government reports|Vaccinations|Total number of people who received all doses prescribed by the vaccination protocol per 100 people in the total population
total_boosters_per_hundred|National government reports|Vaccinations|Total number of COVID-19 vaccination booster doses administered per 100 people in the total population
new_vaccinations_smoothed_per_million|National government reports|Vaccinations|"New COVID-19 vaccination doses administered (7-day smoothed) per 1,000,000 people in the total population"
new_people_vaccinated_smoothed|National government reports|Vaccinations|"Daily number of people receiving their first vaccine dose (7-day smoothed)"
new_people_vaccinated_smoothed_per_hundred|National government reports|Vaccinations|"Daily number of people receiving their first vaccine dose (7-day smoothed) per 100 people in the total population"
stringency_index|"Oxford COVID-19 Government Response Tracker, Blavatnik School of Government"|Policy responses|"Government Response Stringency Index: composite measure based on 9 response indicators including school closures, workplace closures, and travel bans, rescaled to a value from 0 to 100 (100 = strictest response)"
population,"United Nations, Department of Economic and Social Affairs, Population Division, World Population Prospects 2019 Revision"|Others|"Population (latest available values). See https://github.com/owid/covid-19-data/blob/master/scripts/input/un/population_latest.csv for full list of sources"
population_density|"World Bank World Development Indicators, sourced from Food and Agriculture Organization and World Bank estimates"|Others|"Number of people divided by land area, measured in square kilometers, most recent year available"
median_age|"UN Population Division, World Population Prospects, 2017 Revision"|Others|"Median age of the population, UN projection for 2020"
aged_65_older|World Bank World Development Indicators based on age/sex distributions of United Nations World Population Prospects 2017 Revision|Others|"Share of the population that is 65 years and older, most recent year available"
aged_70_older|"United Nations, Department of Economic and Social Affairs, Population Division (2017), World Population Prospects 2017 Revision"|Others|Share of the population that is 70 years and older in 2015
gdp_per_capita|"World Bank World Development Indicators, source from World Bank, International Comparison Program database"|Others|"Gross domestic product at purchasing power parity (constant 2011 international dollars), most recent year available"
extreme_poverty|"World Bank World Development Indicators, sourced from World Bank Development Research Group"|Others|"Share of the population living in extreme poverty, most recent year available since 2010"
cardiovasc_death_rate|"Global Burden of Disease Collaborative Network, Global Burden of Disease Study 2017 Results"|Others|"Death rate from cardiovascular disease in 2017 (annual number of deaths per 100,000 people)"
diabetes_prevalence|"World Bank World Development Indicators, sourced from International Diabetes Federation, Diabetes Atlas"|Others|Diabetes prevalence (% of population aged 20 to 79) in 2017
female_smokers|"World Bank World Development Indicators, sourced from World Health Organization, Global Health Observatory Data Repository"|Others|"Share of women who smoke, most recent year available"
male_smokers|"World Bank World Development Indicators, sourced from World Health Organization, Global Health Observatory Data Repository"|Others|"Share of men who smoke, most recent year available"
handwashing_facilities|United Nations Statistics Division|Others|"Share of the population with basic handwashing facilities on premises, most recent year available"
hospital_beds_per_thousand|"OECD, Eurostat, World Bank, national government records and other sources"|Others|"Hospital beds per 1,000 people, most recent year available since 2010"
life_expectancy|"James C. Riley, Clio Infra, United Nations Population Division"|Others|Life expectancy at birth in 2019
human_development_index|United Nations Development Programme (UNDP)|Others|"A composite index measuring average achievement in three basic dimensions of human development—a long and healthy life, knowledge and a decent standard of living. Values for 2019, imported from http://hdr.undp.org/en/indicators/137506"
excess_mortality|"Human Mortality Database (2021), World Mortality Dataset (2021)"|Excess mortality|"Percentage difference between the reported number of weekly or monthly deaths in 2020–2021 and the projected number of deaths for the same period based on previous years. For more information, see https://github.com/owid/covid-19-data/tree/master/public/data/excess_mortality"
excess_mortality_cumulative|"Human Mortality Database (2021), World Mortality Dataset (2021)"|Excess mortality|"Percentage difference between the cumulative number of deaths since 1 January 2020 and the cumulative projected deaths for the same period based on previous years. For more information, see https://github.com/owid/covid-19-data/tree/master/public/data/excess_mortality"
excess_mortality_cumulative_absolute|"Human Mortality Database (2021), World Mortality Dataset (2021)"|Excess mortality|"Cumulative difference between the reported number of deaths since 1 January 2020 and the projected number of deaths for the same period based on previous years. For more information, see https://github.com/owid/covid-19-data/tree/master/public/data/excess_mortality"
excess_mortality_cumulative_per_million|"Human Mortality Database (2021), World Mortality Dataset (2021)"|Excess mortality|"Cumulative difference between the reported number of deaths since 1 January 2020 and the projected number of deaths for the same period based on previous years, per million people. For more information, see https://github.com/owid/covid-19-data/tree/master/public/data/excess_mortality"

## Database
* owid-covid-data.csv (Complete_COVID-19_dataset) = Our dataset for the Alysis 
* cleaned_data_andrea.csv (Cleaned_Data_by_location) = Reduction of the information on the owid-covid-data.csv to keep the data needed for our ML model 
* continent_cleaned_data_Mouhamadou.csv(Cleaned_Data_by_continents) = Reduction of the information on the owid-covid-data.csv to keep the data needed for our Tableau Analysis  
## Database ![Dataset Draft](https://user-images.githubusercontent.com/89410157/150649369-a40da8a0-0775-4421-b745-973e064261a4.png)
