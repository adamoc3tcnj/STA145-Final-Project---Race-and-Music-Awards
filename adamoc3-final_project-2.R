### Load packages 
# NOTE: you may need to install!
library(readr)


#set working directory 
setwd("/courses/STA145/adamoc3")

# Load the data
data <- read_csv("data.csv.csv")

data_complete <- data %>%
  filter(complete.cases(.))

table(data$race_of_lead_artist, data$awards_won)


# Create the contingency table
contingency_table <- table(data$race_of_lead_artist, data$awards_won)
print(contingency_table)

chisq.test(data$race_of_lead_artist, data$awards_won)

