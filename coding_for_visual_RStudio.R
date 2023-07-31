# Setting up environment
# Load necessary packages 
library(tidyverse)
library(geosphere)
library(ggplot2)
library(dplyr)
library(lubridate)

# Load the data
setwd('C:/Users/Shahmi Aiman/Downloads')
bike_data <- read_csv("cleaned_bike_data.csv")

## Creating Pie Chart (Total) ##

# Create a summary table to calculate the percentages
summary_table <- table(bike_data$member_casual)
percentage <- round(summary_table / sum(summary_table) * 100, 2)

# Create a data frame for plotting
plot_data <- data.frame(
  member_casual = names(summary_table),
  percentage = percentage
)

# Create the pie chart using ggplot2
total_pie <- ggplot(plot_data, aes(x = "", y = percentage, fill = member_casual)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  theme(legend.position = "right") +
  labs(title = "Percentage of Member vs. Casual",
       fill = "",
       x = NULL,
       y = NULL) +
  geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5))

# Display the pie chart
print(total_pie)

## Creating the average duration bike used each month between member and casual user ##

# Calculate the duration of bike used 
bike_data$duration <- difftime(bike_data$ended_at, bike_data$started_at, units = "mins")

# Convert the start_time column to a proper date-time format
bike_data$start_time <- ymd_hms(bike_data$started_at)

# Extract month and year from the start_time column
bike_data$month_year <- format(bike_data$start_time, "%Y-%m")

# Group and summarize data by month and member_casual
summary_data <- bike_data %>%
  mutate(month = floor_date(start_time, "month")) %>%
  group_by(month, member_casual) %>%
  summarize(avg_duration = mean(as.numeric(duration), na.rm = TRUE))

# Create the chart
ggplot(summary_data, aes(x = month, y = avg_duration, fill = member_casual)) +
  geom_col(position = "dodge") +
  scale_x_datetime(date_labels = "%b %Y", date_breaks = "1 month") +
  labs(title = "Average Duration by Month for Member and Casual",
       x = "Month",
       y = "Average Duration (minutes)",
       fill = "Member/Casual") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## Creating the average bike used each month between member and casual user ##

# Calculate the average number of users for member and casual in each month
average_users <- bike_data %>%
  group_by(month_year, member_casual) %>%
  summarize(avg_users = n() / length(unique(date(start_time))))


# Create the chart
ggplot(average_users, aes(x = month_year, y = avg_users, fill = member_casual)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Average Number of Users per Month",
       x = "Month",
       y = "Average Number of Users",
       fill = "User Type") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## Average distance travel by member and casual user ##

# Calculate the distance traveled for each user
bike_data <- bike_data %>%
  mutate(distance_km = distHaversine(
    cbind(start_lng, start_lat),
    cbind(end_lng, end_lat)
  ) / 1000) # Divide by 1000 to get the distance in kilometers

# Calculate the average distance and grouping
distance_table <- bike_data %>%
  group_by(member_casual) %>%
  summarize(avg_distance = mean(as.numeric(distance_km), na.rm = TRUE))

# Create a bar graph comparing the average distance traveled by member and casual users 
ggplot(distance_table, aes(x = member_casual, y = avg_distance, fill = member_casual)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(label = sprintf("%.2f km", avg_distance)), 
            position = position_dodge(width = 0.9), 
            vjust = -0.5, size = 4) + # Add labels above each bar
  labs(title = "Average Distance Traveled by User Type",
       x = "User Type",
       y = "Average Distance (km)") +
  theme_minimal()

## Average duration bike used by member and casual user ##

# Calculate the average duration for each user type
average_duration_by_user <- bike_data %>%
  group_by(member_casual) %>%
  summarize(average_duration = mean(duration, na.rm = TRUE))

# Create a bar graph comparing the average duration between member and casual users
ggplot(average_duration_by_user, aes(x = member_casual, y = average_duration, fill = member_casual)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(label = sprintf("%.2f km", average_duration)), 
            position = position_dodge(width = 0.9), 
            vjust = -0.5, size = 4) +
  labs(x = "User Type", y = "Average Duration (mins)", title = "Average Duration by User Type") +
  theme_minimal()
