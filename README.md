# Bike Share Case Study

## Table of Contents
- [Introduction](#introduction)
- [Business Task](#business-task)
- [Data Source](#data-source)
- [Processing & Cleaning](#processing--cleaning)
- [Analysis](#analysis)
- [Key Findings](#key-findings)
- [Conclusion & Recommendation](#conclusion--recommendation)

## Introduction
This README.md file provides an overview of the data analytics case study on Cyclistic's bike-share program. It outlines the business task, data source, data processing, analysis, key findings, and concludes with recommendations for the marketing team. In this case study, ***BigQuery*** is used to process and clean the data and ***RStudio*** is used to analyse and create the visuals. 

## Business Task
Cyclistic's marketing team aims to design strategies for converting casual riders into annual members. This case study will analyze historical bike trip data to identify trends and insights that can help achieve this goal.

## Data Source
- The source of the public data is from Motivate International Inc. (Divvy Bicycle Sharing Service from Chicago) under this [license](https://ride.divvybikes.com/data-license-agreement).

- The data used is from July 2022 until Jun 2023 (12 Months).

- The data used for analysis is sourced from Cyclistic's bike trip records. It includes the following 13 fields:
  - ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual

## Processing & Cleaning
- Combine 12 tables from the date 2022-07 to 2023-06 using this code  [View SQL Code](./combined_table.sql).

- Data Cleaning: missing values,remove duplicate, convert data types, standardize values [View SQL Code](./data_cleaning.sql).

## Analysis
The analysis will include the following key metrics:
### Total Trips

  - The total number of trips from July 2022 until Jun 2023 is 4,409,089.
### Proportion of trips by User
  ![totalpie](https://github.com/shahmishani/bike_share_case_study/assets/141004999/76d35b22-34c6-47fa-8921-3c75e9fc7646)

  - Majority of the user is a member (62%) and less than half is a casual user (38%) throughout 12 months. 

### Trips by User per month
![average_users_month](https://github.com/shahmishani/bike_share_case_study/assets/141004999/e9b6428a-5420-4a54-9d44-7e7973bee2df)

  - The average number of registered members is consistently higher than the number of casual users throughout the year.
    
  - There is a gradual decline in the user base towards the end of each year.
    
  - Conversely, there is a gradual increase in the number of users towards the middle months of the year.
### Average Trip Duration
  ![average_duration_month](https://github.com/shahmishani/bike_share_case_study/assets/141004999/7e20d571-68d1-45e0-aaa7-ac28a2f7ce49)
  - The average duration of bike rides for casual members is consistently higher than the number of casual users throughout the year.
    
  - For casual users, there is a gradual decline in the duration of rides towards the end of each year. After that, there is a gradual increase in the duration towards the middle months of the year.
    
  - However for registered member the duration of the ride did not change much throughout the year (13mins to 10mins)
    
![average_duration](https://github.com/shahmishani/bike_share_case_study/assets/141004999/9028410c-d441-4204-9cb9-d75c1e9cc6b7)
  - The average duration for casual user almost double (22.5 mins) compared to the average duration for member user (12.10 mins).
    
### Average Trip Distance
![average_distance](https://github.com/shahmishani/bike_share_case_study/assets/141004999/45840d4f-1d40-4862-96f3-ce2e3ddd30eb)
  - The average distance traveled for both type of users is relatively the same where 2.14km for casual users and 2.06km for member users.

## Key Findings
- The number of registered users is significantly higher than the casual users. This is also reflected in the average bike usage in each month.
  
- The number of users decreases towards the end of the year then continue to grow towards middle of the year.
  
- Both registered members and casual users have similar average distances traveled per ride, but casual users tend to have rides with almost double the duration compared to registered members.

## Conclusion & Recommendation
### Conclusions
- User Base: The majority of users are registered members, comprising 62% of all trips, while casual users make up the remaining 38%.

- Seasonal User Trend: The user base experiences a decline towards the end of the year, followed by a gradual increase towards the middle of the year. This seasonal trend could be valuable for marketing strategies.

- Average Trip Duration: Casual users tend to have significantly longer rides compared to registered members. While registered members maintain a consistent average ride duration throughout the year, casual users experience fluctuations, with longer rides during the middle months.

### Recommendations
- Target Seasonal Promotions: Capitalize on the seasonal trend in user numbers by implementing targeted marketing campaigns during periods of user growth. Offer special promotions or discounts to encourage casual users to become registered members during these peak months.

- Personalized Incentives: Leverage the insight that casual users have longer rides on average. Design personalized incentives, such as loyalty rewards or exclusive offers, for casual users who consistently take longer trips. These incentives can encourage them to switch to annual memberships, as they are already demonstrating a higher level of engagement with the service.

- Improved Casual Membership Packages: Analyze the factors that contribute to longer rides for casual users. Consider tailoring membership packages specifically for casual users, offering benefits that align with their usage patterns, such as flexible plans, extended ride times, or bonus ride credits.
