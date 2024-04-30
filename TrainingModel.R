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

# Load necessary packages
library(caTools)  # For data splitting

# Set seed for reproducibility
set.seed(123)

# Split the data into training and testing sets (70% training, 30% testing)
split <- sample.split(employee_data$targeted_productivity, SplitRatio = 0.7)

# Create training and testing datasets
training_data <- subset(employee_data, split == TRUE)
testing_data <- subset(employee_data, split == FALSE)

# Check the dimensions of the training and testing datasets
cat("Training data dimensions:", dim(training_data), "\n")
cat("Testing data dimensions:", dim(testing_data), "\n")

# Load necessary packages
library(boot)

# For example, let's calculate the mean of 'targeted_productivity'
statistic <- function(data, i) {
  mean(data$targeted_productivity[i])
}

# Perform bootstrapping with 1000 bootstrap samples
boot_results <- boot(employee_data, statistic, R = 1000)

# Summarize bootstrapping results
print("Bootstrapping results:")
print(boot_results)

# Plot the bootstrap distribution
plot(boot_results)

# Load necessary packages
library(caret)

# Set the seed for reproducibility
set.seed(123)

# Define the number of folds
k <- 10  # You can choose any value depending on your preference and dataset size

# Define the training control
train_control <- trainControl(method = "cv", number = k)

# Define the model (example: linear regression)
model <- train(targeted_productivity ~ ., data = employee_data, method = "lm", trControl = train_control)

# Print the model
print(model)

# Summarize the results
summary(model)

# Load necessary packages
library(caret)

# Define the model using linear regression
model_lm <- train(targeted_productivity ~ ., data = employee_data, method = "lm")

# Print the model
print(model_lm)

# Summarize the results
summary(model_lm)


