# UTIVA SQL-Capstone-Project

# Case Study: Analysis of  International breweries data recorded for a duration of three years in Profit Made, Brands and Countries
Role: Data Analyst

Target Audience: Management

Tool(s) Used: PostgreSql and Microsoft Excel

### The Goal
The Goal of the Project is to Analyse Data and Help Management to Make better Decision in order to Maximise Profit and Reduce Loss to the lowest Minimum

## Business Solution

### For this case study my Analysis in PostgreSql will make the Management make their decisions by evaluating the following ;
### PROFIT ANALYSIS
1. Within the space of the last three years, what was the profit worth of the breweries, inclusive of the anglophone and the francophone territories?
2. Compare the total profit between these two territories in order for the territory manager, Mr. Stone made a strategic decision that will aid profit maximization in 2020
3. Country that generated the highest profit in 2019
4. Help him find the year with the highest profit.
5. Which month in the three years was the least profit generated?
6. What was the minimum profit in the month of December 2018?
7. Compare the profit in percentage for each of the month in 2019
8. Which particular brand generated the highest profit in Senegal?

### BRAND ANALYSIS
1. Within the last two years, the brand manager wants to know the top three brands consumed in the francophone countries
2. Find out the top two choice of consumer brands in Ghana
3. Find out the details of beers consumed in the past three years in the most oil reached country in West Africa.
4. Favorites malt brand in Anglophone region between 2018 and 2019
5. Which brands sold the highest in 2019 in Nigeria?
6. Favorites brand in South_South region in Nigeria
7. Bear consumption in Nigeria
8. Level of consumption of Budweiser in the regions in Nigeria
9. Level of consumption of Budweiser in the regions in Nigeria in 2019 (Decision on Promo)

### COUNTRIES ANALYSIS
1. Country with the highest consumption of beer.
2. Highest sales personnel of Budweiser in Senegal
3. Country with the highest profit of the fourth quarter in 2019

## The Approach
I followed this approach in modelling the solution above for the business challenge:
1. Business and Data  Understanding

2. Data Preparation

3. Data Exploration and Analydis

4. Data Visualization 

5. Business Recommendation

## Business Understanding

To give an accurate solution to the Business problem, you need to have proper understanding of the the business.it creates a road-map for moving forward, framing the business problem and proffering effective business solutions.

### The main goal of this case study is to help management make Informed Decision to Maximise Profit and Reduce Loss to the lowest Minimum

In order to Analyse and  communicate effectively with management so action can be made based on the insights generated, there is need to leverage on Programming Language tool like SQL applications. For this business case I leveraged on PostgreSql for my data analysis and Microsoft Excel for visualization.

## DATA UNDERSTANDING

## A Microsoft Excel Worksheet (csv) dataset was provided for analysis consisting of 1048 rows and 13 columns

The Data workbook consist of the Sales ID,	Sales Reps,	Emails,	Brands,	Plant Cost	Unit Price,	Quantity,	Cost,	Profit,	Countries	Region 	Months,	Years

An overview of the datasets are shown below;

![Screenshot (125)](https://user-images.githubusercontent.com/96060060/182146638-21a688cf-c9a2-4328-adea-661b36e3867a.png)

From the overview of datasets displayed above, it’s important and necessary we prepare the datasets before analysis and visualization is carried out.

## DATA PREPARATION

In preparing the Data, the First step taken was to Import the dataset from my Excel workbook into PgAdmin. I did that by Importing my dataset from excel into the Database i already created in the PgAdmin Environment.
This is how the Imported Dataset look like in the Pgadmin

![Screenshot (126)](https://user-images.githubusercontent.com/96060060/182158116-4ae380a3-db20-436e-a0fc-d6b2200ff8c1.png)

# Exploratory Data Analysis (EDA)

After cleaning the data and preparing it, Exploratory Data Analysis (EDA) was then performed on the data to gather insights that will be useful to help the Management  make Informed decision About the Business Problem

## Insights from the analysis

In order for management to make the best decision as Regards the Business Problem,  I have summarized below some key Insights which will guide the management in the next step to take.

Profit Analysis
1. Within the space of the last three years, what was the profit worth of the breweries, inclusive of the anglophone and the francophone territories?

![Screenshot (127)](https://user-images.githubusercontent.com/96060060/182163123-f4092465-4a42-41a6-b5f6-832e42d02ef4.png)

2. Compare the total profit between these two territories in order for the territory manager,Mr. Stone made a strategic decision that will aid profit maximization in 2020

![Screenshot (128)](https://user-images.githubusercontent.com/96060060/182164349-4d3c0945-c4e2-48c4-b73b-126a469d7dbf.png)

3. Country that generated the highest profit in 2019

![Screenshot (129)](https://user-images.githubusercontent.com/96060060/182165024-5f5d01df-3805-4f72-8080-e3e87264d0dc.png)

4. Help him find the year with the highest profit

![Screenshot (130)](https://user-images.githubusercontent.com/96060060/182165866-e2a128cf-908b-48ad-aa6d-77efa8e8300f.png)

5.  Which month in the three years was the least profit generated?

![Screenshot (131)](https://user-images.githubusercontent.com/96060060/182166575-01535219-a841-461f-a256-cb4ababa9a33.png)

6. What was the minimum profit in the month of December 2018

![Screenshot (132)](https://user-images.githubusercontent.com/96060060/182168187-5036ee62-f427-46c0-9713-6f665ec4b97f.png)

7. Compare the profit in percentage for each of the month in 2019

![Screenshot (133)](https://user-images.githubusercontent.com/96060060/182169460-7dc2cfac-52de-4eeb-8f51-09019c0c6243.png)

8. Which particular brand generated the highest profit in Senegal

![Screenshot (134)](https://user-images.githubusercontent.com/96060060/182170477-754c3e5a-3f53-4e28-b0c9-c174ba059aca.png)

Brand Analysis

1. Within the last two years, the brand manager wants to know the top three brands consumed in the francophone countries

![Screenshot (135)](https://user-images.githubusercontent.com/96060060/182174109-e08095aa-50d4-4934-8880-0d3c710ae4a9.png)

2. Find out the top two choice of consumer brands in Ghana

![Screenshot (136)](https://user-images.githubusercontent.com/96060060/182174623-0e533746-0892-455a-8cff-e89c019f8ec5.png)

3. Find out the details of beers consumed in the past three years in the most oil reached country in West Africa.

![Screenshot (137)](https://user-images.githubusercontent.com/96060060/182175474-2a35b15c-7a40-482a-835b-c5e9c8a4ad57.png)

4. Favorites malt brand in Anglophone region between 2018 and 2019

![Screenshot (138)](https://user-images.githubusercontent.com/96060060/182176297-f86d80f4-7ba6-40ec-819c-dc78e23aa526.png)

5. Which brands sold the highest in 2019 in Nigeria?

![Screenshot (139)](https://user-images.githubusercontent.com/96060060/182176761-75f010bc-59f6-4880-93d9-8e2270ea0db1.png)

6. Favorites brand in South_South region in Nigeria

![image](https://user-images.githubusercontent.com/96060060/182177129-2dff5dac-618a-4505-90c1-0b8eabca11f7.png)

7. Bear consumption in Nigeria

![Screenshot (141)](https://user-images.githubusercontent.com/96060060/182178042-4aa9fe48-4efe-4ffa-9346-71490336b0f2.png)

8. Level of consumption of Budweiser in the regions in Nigeria

![Screenshot (142)](https://user-images.githubusercontent.com/96060060/182178864-d0714051-b692-4d14-8475-3941818e420b.png)

9. Level of consumption of Budweiser in the regions in Nigeria in 2019 (Decision on Promo)

![Screenshot (143)](https://user-images.githubusercontent.com/96060060/182179747-ade59e2a-8e3d-4f4b-b54b-6cb68a20468d.png)

 COUNTRIES ANALYSIS

 1. Country with the highest consumption of beer

![Screenshot (144)](https://user-images.githubusercontent.com/96060060/182180239-435721e0-5c48-4010-8ca4-8638583b901b.png)

 Question 2: Highest sales personnel of Budweiser in Senegal

![Screenshot (145)](https://user-images.githubusercontent.com/96060060/182180555-0edd0e44-e70d-4fed-b297-889106b1b43d.png)


3. Country with the highest profit of the fourth quarter in 2019 

![Screenshot (145)](https://user-images.githubusercontent.com/96060060/182180861-42ebb7e4-3f5a-4ee3-98d9-f016d41671b6.png)

# CONCLUSION

The insights derived have been able to answer key questions that will guide management in taking action to meet the set objective of the business.































