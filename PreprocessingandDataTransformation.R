# Load the employee dataset
employee_data <- read.csv("data/employee_performance.csv", 
                          colClasses = c(
                            team = "factor",
                            targeted_productivity = "numeric",
                            smv = "numeric",
                            wip = "numeric",
                            over_time = "numeric",
                            incentive = "numeric",
                            idle_time = "numeric",
                            idle_men = "numeric",
                            no_of_style_change = "numeric",
                            no_of_workers = "numeric",
                            month = "factor",
                            quarter_Quarter1 = "factor",
                            quarter_Quarter2 = "factor",
                            quarter_Quarter3 = "factor",
                            quarter_Quarter4 = "factor",
                            quarter_Quarter5 = "factor",
                            day_Friday = "factor",
                            department_finishing  = "factor", 
                            department_sewing = "factor",  
                            day_Monday = "factor",
                            day_Saturday = "factor",
                            day_Sunday = "factor",
                            day_Thursday = "factor",
                            day_Tuesday = "factor",
                            day_Wednesday = "factor"
                          ), 
                          header = TRUE)

# Display the structure of the dataset
str(employee_data)

# View the first few rows of the dataset
head(employee_data)

# View the dataset
View(employee_data)

# Ensure 'team' and 'month' are removed from both training and prediction data
employee_data <- employee_data[, !colnames(employee_data) %in% c("team", "month")]


# Check for missing values
missing_values <- colSums(is.na(employee_data))

# Print the number of missing values for each variable
print("Missing values in the dataset:")
print(missing_values)

employee_data$wip[is.na(employee_data$wip)] <- mean(employee_data$wip, na.rm = TRUE)

# Check if there are still missing values
missing_values <- colSums(is.na(employee_data))

# Print the number of missing values for each variable after imputation
print("Missing values in the dataset after imputation:")
print(missing_values)


