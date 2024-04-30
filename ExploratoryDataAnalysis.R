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
                            department_finishing = "factor",
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

# Frequency table for the 'team' variable
team_freq <- table(employee_data$team)
print("Frequency table for 'team' variable:")
print(team_freq)

# Frequency table for the 'department_finishing' variable
dept_finishing_freq <- table(employee_data$department_finishing)
print("Frequency table for 'department_finishing' variable:")
print(dept_finishing_freq)

# Frequency table for the 'day_Monday' variable
day_Monday_freq <- table(employee_data$day_Monday)
print("Frequency table for 'day_Monday' variable:")
print(day_Monday_freq)

# Calculate measures of central tendency for numerical variables

# Mean
mean_targeted_productivity <- mean(employee_data$targeted_productivity)
mean_smv <- mean(employee_data$smv)
mean_wip <- mean(employee_data$wip)
mean_over_time <- mean(employee_data$over_time)
mean_incentive <- mean(employee_data$incentive)
mean_idle_time <- mean(employee_data$idle_time)
mean_idle_men <- mean(employee_data$idle_men)
mean_no_of_style_change <- mean(employee_data$no_of_style_change)
mean_no_of_workers <- mean(employee_data$no_of_workers)

# Median
median_targeted_productivity <- median(employee_data$targeted_productivity)
median_smv <- median(employee_data$smv)
median_wip <- median(employee_data$wip)
median_over_time <- median(employee_data$over_time)
median_incentive <- median(employee_data$incentive)
median_idle_time <- median(employee_data$idle_time)
median_idle_men <- median(employee_data$idle_men)
median_no_of_style_change <- median(employee_data$no_of_style_change)
median_no_of_workers <- median(employee_data$no_of_workers)

# Mode (assuming there's only one mode)
mode_targeted_productivity <- names(sort(table(employee_data$targeted_productivity), decreasing = TRUE)[1])
mode_smv <- names(sort(table(employee_data$smv), decreasing = TRUE)[1])
mode_wip <- names(sort(table(employee_data$wip), decreasing = TRUE)[1])
mode_over_time <- names(sort(table(employee_data$over_time), decreasing = TRUE)[1])
mode_incentive <- names(sort(table(employee_data$incentive), decreasing = TRUE)[1])
mode_idle_time <- names(sort(table(employee_data$idle_time), decreasing = TRUE)[1])
mode_idle_men <- names(sort(table(employee_data$idle_men), decreasing = TRUE)[1])
mode_no_of_style_change <- names(sort(table(employee_data$no_of_style_change), decreasing = TRUE)[1])
mode_no_of_workers <- names(sort(table(employee_data$no_of_workers), decreasing = TRUE)[1])

# Print the results
cat("Mean targeted_productivity:", mean_targeted_productivity, "\n")
cat("Median targeted_productivity:", median_targeted_productivity, "\n")
cat("Mode targeted_productivity:", mode_targeted_productivity, "\n")

cat("Mean smv:", mean_smv, "\n")
cat("Median smv:", median_smv, "\n")
cat("Mode smv:", mode_smv, "\n")

cat("Mean wip:", mean_wip, "\n")
cat("Median wip:", median_wip, "\n")
cat("Mode wip:", mode_wip, "\n")

cat("Mean over_time:", mean_over_time, "\n")
cat("Median over_time:", median_over_time, "\n")
cat("Mode over_time:", mode_over_time, "\n")

cat("Mean incentive:", mean_incentive, "\n")
cat("Median incentive:", median_incentive, "\n")
cat("Mode incentive:", mode_incentive, "\n")

cat("Mean idle_time:", mean_idle_time, "\n")
cat("Median idle_time:", median_idle_time, "\n")
cat("Mode idle_time:", mode_idle_time, "\n")

cat("Mean idle_men:", mean_idle_men, "\n")
cat("Median idle_men:", median_idle_men, "\n")
cat("Mode idle_men:", mode_idle_men, "\n")

cat("Mean no_of_style_change:", mean_no_of_style_change, "\n")
cat("Median no_of_style_change:", median_no_of_style_change, "\n")
cat("Mode no_of_style_change:", mode_no_of_style_change, "\n")

cat("Mean no_of_workers:", mean_no_of_workers, "\n")
cat("Median no_of_workers:", median_no_of_workers, "\n")
cat("Mode no_of_workers:", mode_no_of_workers, "\n")

