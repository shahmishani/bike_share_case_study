# bike_share_case_study

## Table of Contents
- [Introduction](#introduction)
- [Business Task](#business-task)
- [Data Source](#data-source)
- [Processing & Cleaning](#processing--cleaning)
- [Analysis](#analysis)
- [Key Findings](#key-findings)
- [Conclusion & Recommendation](#conclusion--recommendation)

## Introduction
This README.md file provides an overview of the data analytics case study on Cyclistic's bike-share program. It outlines the business task, data source, data processing, analysis, key findings, and concludes with recommendations for the marketing team.

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
- Total Trips
- Trips by User Type
- Average Trip Duration
- Popular Routes
- Peak Usage Hours
- Conversion Rate
- Membership Duration (For Converted Casual Riders)
- Frequency of Use
- Seasonal Variations
- Influence of Digital Media
- Membership Renewals
- Demographic Analysis
- Start-End Station Popularity

## Key Findings
The key findings will be based on insights gained from the data analysis, identifying patterns, trends, and potential opportunities for increasing annual memberships.

## Conclusion & Recommendation
Based on the key findings, the case study will conclude with actionable recommendations for Cyclistic's marketing team to improve customer conversion and maximize annual memberships.


