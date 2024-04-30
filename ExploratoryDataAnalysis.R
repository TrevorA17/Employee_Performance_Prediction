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

# Load the psych package
library(psych)

# Calculate measures of distribution for numerical variables

# Variance
variance_targeted_productivity <- var(employee_data$targeted_productivity)
variance_smv <- var(employee_data$smv)
variance_wip <- var(employee_data$wip)
variance_over_time <- var(employee_data$over_time)
variance_incentive <- var(employee_data$incentive)
variance_idle_time <- var(employee_data$idle_time)
variance_idle_men <- var(employee_data$idle_men)
variance_no_of_style_change <- var(employee_data$no_of_style_change)
variance_no_of_workers <- var(employee_data$no_of_workers)

# Standard Deviation
sd_targeted_productivity <- sd(employee_data$targeted_productivity)
sd_smv <- sd(employee_data$smv)
sd_wip <- sd(employee_data$wip)
sd_over_time <- sd(employee_data$over_time)
sd_incentive <- sd(employee_data$incentive)
sd_idle_time <- sd(employee_data$idle_time)
sd_idle_men <- sd(employee_data$idle_men)
sd_no_of_style_change <- sd(employee_data$no_of_style_change)
sd_no_of_workers <- sd(employee_data$no_of_workers)

# Skewness
skewness_targeted_productivity <- skew(employee_data$targeted_productivity)
skewness_smv <- skew(employee_data$smv)
skewness_wip <- skew(employee_data$wip)
skewness_over_time <- skew(employee_data$over_time)
skewness_incentive <- skew(employee_data$incentive)
skewness_idle_time <- skew(employee_data$idle_time)
skewness_idle_men <- skew(employee_data$idle_men)
skewness_no_of_style_change <- skew(employee_data$no_of_style_change)
skewness_no_of_workers <- skew(employee_data$no_of_workers)

# Print the results
cat("Variance targeted_productivity:", variance_targeted_productivity, "\n")
cat("Standard Deviation targeted_productivity:", sd_targeted_productivity, "\n")
cat("Skewness targeted_productivity:", skewness_targeted_productivity, "\n")

cat("Variance smv:", variance_smv, "\n")
cat("Standard Deviation smv:", sd_smv, "\n")
cat("Skewness smv:", skewness_smv, "\n")

cat("Variance wip:", variance_wip, "\n")
cat("Standard Deviation wip:", sd_wip, "\n")
cat("Skewness wip:", skewness_wip, "\n")

cat("Variance over_time:", variance_over_time, "\n")
cat("Standard Deviation over_time:", sd_over_time, "\n")
cat("Skewness over_time:", skewness_over_time, "\n")

cat("Variance incentive:", variance_incentive, "\n")
cat("Standard Deviation incentive:", sd_incentive, "\n")
cat("Skewness incentive:", skewness_incentive, "\n")

cat("Variance idle_time:", variance_idle_time, "\n")
cat("Standard Deviation idle_time:", sd_idle_time, "\n")
cat("Skewness idle_time:", skewness_idle_time, "\n")

cat("Variance idle_men:", variance_idle_men, "\n")
cat("Standard Deviation idle_men:", sd_idle_men, "\n")
cat("Skewness idle_men:", skewness_idle_men, "\n")

cat("Variance no_of_style_change:", variance_no_of_style_change, "\n")
cat("Standard Deviation no_of_style_change:", sd_no_of_style_change, "\n")
cat("Skewness no_of_style_change:", skewness_no_of_style_change, "\n")

cat("Variance no_of_workers:", variance_no_of_workers, "\n")
cat("Standard Deviation no_of_workers:", sd_no_of_workers, "\n")
cat("Skewness no_of_workers:", skewness_no_of_workers, "\n")

# Calculate correlation matrix for numerical variables
correlation_matrix <- cor(employee_data[, c(
  "targeted_productivity", "smv", "wip", "over_time",
  "incentive", "idle_time", "idle_men", "no_of_style_change",
  "no_of_workers"
)])

# Print correlation matrix
print("Correlation Matrix:")
print(correlation_matrix)

# Here, we'll test whether the mean targeted_productivity differs between different days of the week

# Fit ANOVA model
anova_result <- aov(targeted_productivity ~ day_Monday + day_Tuesday + day_Wednesday + 
                      day_Thursday + day_Friday + day_Saturday + day_Sunday, data = employee_data)

# Summary of ANOVA
summary(anova_result)
