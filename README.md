# FinalProject

[Slide Deck Link](https://docs.google.com/presentation/d/1ESH3hlesa9KwhYse6mnfTc9szfOFGR59yVGjwGLGfOI/edit?usp=sharing)
## Introduction

The COVID-19 pandemic became the first non-influenza pandemic to affect more than 200 countries as declared in March of 2020. It has caused a worldwide panic since it negatively affected the economy, employment, healthcare systems, and more. In December 2020, the first COVID vaccine became FDA approved and available to those of 16 years and older which helped contribute to a decrease in hospitalizations all around the world as well as a reduction in cases.

## Overview

Our topic was to develop the analysis of vaccination efficiency and testing efficiency of COVID-19 worldwide. Given the new variants of COVID-19, it’s important to test the efficiency of vaccinations and tests in order to be able to analyze how these have affected the number of cases and deaths worldwide. Not only that, but we wanted to see the correlation between the number of cases confirmed and if that predicts the number of deaths. Another part of the project was to see the change in number of cases once the COVID-19 vaccine was released.
We decided to retrieve data from Our World in Data (OWID) as a provisional database as well as the geographical data from the Johns Hopkins University COVID-19 database. Luckily enough, OWID began to use the data from JHU in November of 2020 so using both these databases won’t deter us from mixing data.

##### Questions we hope to answer with the data:

We want to figure out the correlation between:
 - Tests vs Deaths
 - Tests vs Cases
 - Vaccinations vs Cases
  - Vaccinations vs Deaths


## Link to Data and Resources:

* “Our World in Data”(OWID) ( https://ourworldindata.org). 
* OWID Github page (https://github.com/owid/covid-19-data).
* "Johns Hopkins Dashboard (https://www.arcgis.com/apps/dashboards/bda7594740fd40299423467b48e9ecf6)


## Machine Learning Model Description:

After many suggested ideas for the prevention of COVID-19 such as the vaccination, we will be building supervised machine learning models in order to visualize the statistics and to test whether the data is enough evidence to support our hypotheses aforementioned above.
For these models, we will be primarily using R/RStudio and Python in Google Colab/Jupyter Notebook. 

## Database
We used AWS to create our Database. The source was load to a bucket (mthiobane-finalproject). Then we have created a server (finalproject) to link the server to pgadmin.
We have cleaned the data through colab to created two CSV files:
* Cleaned_Data_by_location = Reduction of the information on the owid-covid-data.csv to keep the data needed for our tableau analysis per the selected countries.
* Cleaned_Data_by_continents = Reduction of the information on the owid-covid-data.csv to keep the data needed for our Tableau Analysis by continents
those files have been export to our local computer and load to the bucket.
## S3 Bucket![S3Bucket](https://user-images.githubusercontent.com/89410157/152446781-aad23bfc-9b09-40f1-a23f-97e16cf49973.png)
## PgAdmin table![PgAdmin tables](https://user-images.githubusercontent.com/89410157/152446796-ea8b6073-003e-4d05-a6e8-5a9e124ef348.png)

 
## Database ![Dataset Draft](https://user-images.githubusercontent.com/89410157/150649369-a40da8a0-0775-4421-b745-973e064261a4.png)

# Looking at the Data
  - Andrea decided to play around a little bit with the data as well as to look at it and I created two maps that would allow us to pick the dates from January 1st, 2020 to January 18th, 2022 and view the cases as well as the deaths as a start.
  - Mouhamadou played with Tableau in order to view the continental and intercontinental trends.

## Heatmap
Below is the overall data created into a heatmap in order to visualize the variables and their level of correlation.
![image](https://user-images.githubusercontent.com/57331058/153116802-d6458c8d-4e61-4701-a3b8-f5dc6b33e662.png)

## Maps
### Cases Over Time
![image](https://user-images.githubusercontent.com/57331058/152260610-63bdb45c-419b-4e3d-8cec-6b834355376a.png)

### Deaths Over Time
![image](https://user-images.githubusercontent.com/57331058/152260776-7efd40a3-be33-4d10-9ebe-0023fa53bdb6.png)

## Analysis of the Covid-19 impact per continents with Tableau
The tableau story can bee view in the follow links:
* Analysis per continents : [link to dashboard](https://public.tableau.com/app/profile/mouhamadou.thiobane/viz/FinalProjectCovid-19Analysis/Analysisofthecovid-19AroundtheWorld?publish=yes)
* Analysis per selected countries [link to dashboard](https://public.tableau.com/app/profile/mouhamadou.thiobane/viz/Analysisofthecovid-19perrandomselectedcountries/Analysisofthecovid-19perrandomselectedcountries?publish=yes)

# Cleaning the Data
  - Some things we noticed were that the data had many null values when it came to cases, vaccinations, tests, and deaths. We do have to realize that COVID spread from China in the beginning of March so that explains the cases for other countries, the vaccination wasn’t FDA approved until November of 2020, the deaths came after COVID was introduced to other countries, and tests were made shortly after January 28th of 2020 but we have to keep in mind that they are not that easily accessible as they are in the states.
  - We replaced those null values with 0 and also removed the rows where the location and the continent was the same. Those rows were just the data of the continents and since we didn’t need them we dropped them.
![image](https://user-images.githubusercontent.com/57331058/152705348-1c1f26dd-f13f-466e-8631-f0c43ab18cd2.png)

# Training the data
First, we wanted to group each country's mean into three levels: whether they are low risk, medium risk, or high risk countries for COVID-19.
![image](https://user-images.githubusercontent.com/57331058/153106220-630e9b8c-fd15-4321-b81c-fd33bd964e30.png)


These are the three levels and their countries:
![image](https://user-images.githubusercontent.com/57331058/153106324-3425e5a4-0f02-46f4-b701-a196fb38f752.png)
![image](https://user-images.githubusercontent.com/57331058/153106356-303fb86b-8991-4ac5-a20c-17a5179fcec6.png)
![image](https://user-images.githubusercontent.com/57331058/153106444-25ea1203-a0b2-4c2c-8a95-9f71c993c701.png)


## Functions
#### Pick_three()
In order to pick one out of each risk level, a function called pick_three() was created:
![image](https://user-images.githubusercontent.com/57331058/153106938-600dba8b-80ad-4224-b90b-b7cbcf4643ad.png)

#### Make_df()
Then, in order to create a dataframe with those three countries and all its data, we created a function that extracts each row from the countries_df where the location is in the list of the three countries from the pick_three() and creates a dataframe.
![image](https://user-images.githubusercontent.com/57331058/153107221-a2cc9f18-b90a-4faa-aa5d-8ff4377f130e.png)

#### Tests_vs_Deaths(), Tests_vs_Cases(), Vacs_vs_Deaths(), Vacs_vs_Cases()
These functions were created in order to find the correlation coefficient of countries, having make_df() inside, and to view the summary of the correlation. These functions gave us numbers that allowed us to determine whether these variables had strong/weak correlation with one another and in different countries.

# Modeling (OLS)
The modeling we decided to go with an ordinary least squares in order to estimate the parameters in this linear regression model.
 * Limitations: Large data set is necessary in order to obtain reliable results. The regression results are sensitive to functional form if the error term is not adequately interpreted, which can lead to widely varying conclusions, depending on how the regression is initially set up.
 * Benefits: The statistical method reveals information about cost structures and can distinguish between different variables’ roles in affecting output. Coefficients can be interpreted in terms of cost drivers or how inputs contribute to output.

![image](https://user-images.githubusercontent.com/57331058/153110955-e4606a90-b08c-4c2b-9cbc-a339e82b9b9c.png)

![image](https://user-images.githubusercontent.com/57331058/153110999-7614480a-c782-4adc-a3f3-b4ddc38132d1.png)

![image](https://user-images.githubusercontent.com/57331058/153111056-109efa57-917f-4bf3-b3e1-51cbb4ae1a19.png)

![image](https://user-images.githubusercontent.com/57331058/153111105-d75d7bff-de25-4139-bf6e-650bb1d9da85.png)

![image](https://user-images.githubusercontent.com/57331058/153111140-572a5d58-bebd-4c6f-b1a2-c237973f1902.png)

![image](https://user-images.githubusercontent.com/57331058/153111166-6fa3c8ee-ae0a-4c1d-8739-ef1007a2dd48.png)

![image](https://user-images.githubusercontent.com/57331058/153111195-25fff5f0-d276-4e52-8e26-ca579f383806.png)

![image](https://user-images.githubusercontent.com/57331058/153111241-af578ef6-8ceb-4c4b-8567-8651bdb14c63.png)


### Results
[Tests vs Deaths] – There is not enough information to support the hypothesis that these two are correlated.
Ex: Zimbabwe

[Tests vs Cases] – The tests performed around the world cannot predict the number of new cases. 
Ex: Malta, Thailand, Netherlands.

[Vaccinations vs Cases] – Here we see an abnormal finding that some countries have a positive correlation between the two.
Ex: Slovenia, Ukraine, Russia, South Korea.

[Vaccinations vs Deaths] – No correlation, these two variables are independent of each other.
By looking at most countries and the variables we’ve decided to examine correlation, we don’t have enough information in order to say that the models support any correlation between these variables.
We can take a look at Hungary in the tests vs deaths analysis and it’s one of the highest correlations we’ve actually seen.

[Tests vs Deaths] – There is not enough information to support the hypothesis that these two are correlated.
Ex: Zimbabwe

[Tests vs Cases] – The tests performed around the world cannot predict the number of new cases. 
Ex: Malta, Thailand, Netherlands.

[Vaccinations vs Cases] – Here we see an abnormal finding that some countries have a positive correlation between the two.
Ex: Slovenia, Ukraine, Russia, South Korea.

[Vaccinations vs Deaths] – No correlation, these two variables are independent of each other.


By looking at most countries and the variables we’ve decided to examine correlation, we don’t have enough information in order to say that the models support any correlation between these variables.
We can take a look at Hungary in the tests vs deaths analysis and it’s one of the highest correlations we’ve actually seen.

### Recommendations
Some countries don’t have enough information → with this project we found which countries need more COVID-19 surveys and provide that information for those who want a complete global dataset; encourage an increase of surveys in such countries.
A study could be done to find out the efficiency of vaccination on new variants.
Additional risk factors like those tied to demographics would be helpful to see what other variables are influencing a rise and decrease in total cases and number of reported deaths.
We could also analysis the impact of the lock down on the new cases and deaths. 


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

