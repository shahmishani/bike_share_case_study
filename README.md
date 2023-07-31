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
The data used for analysis is sourced from Cyclistic's bike trip records. It includes the following 13 fields:
- ride_id: A unique identifier for each bike ride trip.
- rideable_type: The type of bike used for the ride (e.g., electric bike, regular bike, etc.).
- started_at: Timestamp indicating when the bike ride trip started.
- ended_at: Timestamp indicating when the bike ride trip ended.
- start_station_name: The name of the station where the bike ride trip started.
- start_station_id: A unique identifier for the station where the bike ride trip started.
- end_station_name: The name of the station where the bike ride trip ended.
- end_station_id: A unique identifier for the station where the bike ride trip ended.
- start_lat: The latitude coordinate of the starting location of the bike ride trip.
- start_lng: The longitude coordinate of the starting location of the bike ride trip.
- end_lat: The latitude coordinate of the ending location of the bike ride trip.
- end_lng: The longitude coordinate of the ending location of the bike ride trip.
- member_casual: Indicates whether the rider is a casual rider or an annual member.

## Processing & Cleaning
- Combine 12 tables from the date 2022-07 to 2023-06 using this code  [View SQL Code](./combined_table.sql)
The data will be cleaned and processed to handle missing values, convert data types, standardize values, and remove outliers.

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


