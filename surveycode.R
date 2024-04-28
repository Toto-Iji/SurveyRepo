library(ggplot2)
library(dplyr)
library(tidyr)
library(gridExtra)

# Read the data
data <- read.csv("survey.csv")

# Remove rows with missing values
cleaned_data <- na.omit(data)

# Calculate the total counts per choice for the desired column
column_counts <- cleaned_data %>%
  separate_rows(Have.you.used.any.of.these.music.streaming.platform.for.the.past.week...Can.select.multiple., sep = ", ") %>%
  group_by(Have.you.used.any.of.these.music.streaming.platform.for.the.past.week...Can.select.multiple.) %>%
  summarise(count = n())

# Bar graph for the total counts per choice
bar_another_column <- ggplot(column_counts, aes(x = Have.you.used.any.of.these.music.streaming.platform.for.the.past.week...Can.select.multiple., y = count)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Counts per Choice for Another Column") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Calculate the total device used for the desired column
column_device <- cleaned_data %>%
  separate_rows(What.device.are.you.using.for.streaming.music.online...Can.select.multiple., sep = ", ") %>%
  group_by(What.device.are.you.using.for.streaming.music.online...Can.select.multiple.) %>%
  summarise(count = n())

# Bar graph for the total device used
bar_another_device <- ggplot(column_device, aes(x = What.device.are.you.using.for.streaming.music.online...Can.select.multiple., y = count)) +
  geom_bar(stat = "identity") +
  labs(title = "Device Used") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Pie chart for age 
pie_chart_age <- ggplot(cleaned_data, aes(x = "", fill = factor(Age))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Age",
       fill = "Age") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )

# Pie chart for sex 
pie_chart_sex <- ggplot(cleaned_data, aes(x = "", fill = factor(Sex))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Sex",
       fill = "Sex") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )

# Pie chart for education level 
pie_chart_education <- ggplot(cleaned_data, aes(x = "", fill = factor(Education_level))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Education Level",
       fill = "Education Level") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )

# Arrange the plots
grid.arrange(pie_chart_age, pie_chart_sex, pie_chart_education, bar_another_column, bar_another_device, nrow = 2)

