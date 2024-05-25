# Strategic Insights for Beijing Property Investment

## Introduction 🌟
This repository contains analysis on Beijing Property Market prices using data from Kaggle.
> Programming Language: SQL (MySQL)

The repository has the following series of contents:
```
├── data/
│   ├── raw/                      # Original Dataset
│   └── processed/                # Cleaned Dataset
│
├── notebooks/                    # SQL Query
│
└── reports/                      # Final PPT
```
## Problem Statement ❓
Our goal for this project is to use time, location, property and amenities analysis to suggest an optimal solution for investing in Beijing properties in 2018 for different categories of budgets of investors

- 3 Categories of investors
  - 👤 Low Budget < ¥2,500,000
  - 👤 Medium Budget ¥2,500,000 – ¥5,000,000
  - 👤 High Budget > ¥5,000,000


## Data Description 📶
- url: the url which fetches the data
- id: the id of transaction
- Lng: and Lat coordinates, using the BD09 protocol.
- Cid: community id
- tradeTime: the time of transaction
- DOM: active days on market.Know more in https://en.wikipedia.org/wiki/Days_on_market
- followers: the number of people follow the transaction.
- totalPrice: the total price
- price: the average price by square
- square: the square of house
- livingRoom: the number of living room
- drawingRoom: the number of drawing room
- kitchen: the number of kitchen
- bathroom the number of bathroom
- floor: the height of the house
- buildingType: including tower( 1 ) , bungalow( 2 )，combination of plate and tower( 3 ), plate( 4 ).
- constructionTime: the time of construction
- renovationCondition: including other( 1 ), rough( 2 ),Simplicity( 3 ), hardcover( 4 )
- buildingStructure: including unknow( 1 ), mixed( 2 ), brick and wood( 3 ), brick and concrete( 4 ),steel( 5 ) and steel-concrete composite ( 6 ).
- ladderRatio: the proportion between number of residents on the same floor and number of elevator of ladder. It describes how many ladders a resident have on average.
- elevator have ( 1 ) or not have elevator( 0 )
- fiveYearsProperty: if the owner have the property for less than 5 years,

