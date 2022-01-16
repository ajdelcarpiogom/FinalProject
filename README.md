# FinalProject

## Introduction

The COVID-19 pandemic became the first non-influenza pandemic to affect more than 200 countries as declared in March of 2020. It has caused a worldwide panic since it negatively affected the economy, employment, healthcare systems, and more. In December 2020, the first COVID vaccine became FDA approved and available to those of 16 years and older which helped contribute to a decrease in hospitalizations all around the world as well as a reduction in cases.

## Overview

Our topic was to develop the analysis of vaccination efficiency and testing efficiency of COVID-19 worldwide. Given the new variants of COVID-19, it’s important to test the efficiency of vaccinations and tests in order to be able to analyze how these have affected the number of cases and deaths worldwide. Not only that, but we wanted to see the correlation between the number of cases confirmed and if that predicts the number of deaths. Another part of the project was to see the change in number of cases once the COVID-19 vaccine was released.
We decided to retrieve data from Our World in Data (OWID) as a provisional database as well as the geographical data from the Johns Hopkins University COVID-19 database. Luckily enough, OWID began to use the data from JHU in November of 2020 so using both these databases won’t deter us from mixing data.

##### Questions we hope to answer with the data:
 
* How correlated were the number of tests administered and total number of new covid-19 cases?
* What relation exists between tests administered and total number of deaths?
* Does an increase in the number of vaccinated people have an effect on total new covid-19 cases?
* Is the Omicron variant responsible for less deaths than the original Covid-19 strain?
* Are higher numbers of new cases associated with an increase in the mortality rate?

## Link to Data and Resources:

* “Our World in Data”(OWID) ( https://ourworldindata.org). 
* OWID Github page (https://github.com/owid/covid-19-data).

## Machine Learning Model Description:

As vaccination is the main factual solution for the covid-19, we will build a supervised machine learning model to see if the number of vaccinated people can help predict the number of new deaths.

As such, we have created a provisional machine learning model that stands in for the final machine learning model. This model is structured to take data in from the provisional database aforementioned, and has the ability to output labels for the input data. 
