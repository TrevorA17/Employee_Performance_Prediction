# Load necessary libraries
library(plumber)

# Load the saved random forest model
loaded_rf_model <- readRDS("models/random_forest_model.rds")

# Define your API endpoint
#* @apiTitle Employee Performance Prediction Model API
#* @apiDescription Used to predict employee performance.

#* @param team Team number
#* @param targeted_productivity Targeted productivity
#* @param smv Standard minute value
#* @param wip Work in progress
#* @param over_time Overtime hours
#* @param incentive Incentive hours
#* @param idle_time Idle time
#* @param idle_men Idle men count
#* @param no_of_style_change Number of style changes
#* @param no_of_workers Number of workers
#* @param month Month (0 if not applicable)
#* @param quarter_Quarter1 Quarter 1 (0 or 1)
#* @param quarter_Quarter2 Quarter 2 (0 or 1)
#* @param quarter_Quarter3 Quarter 3 (0 or 1)
#* @param quarter_Quarter4 Quarter 4 (0 or 1)
#* @param quarter_Quarter5 Quarter 5 (0 or 1)
#* @param department_finishing Department finishing (0 or 1)
#* @param department_sweing Department sewing (0 or 1)
#* @param day_Monday Day Monday (0 or 1)
#* @param day_Saturday Day Saturday (0 or 1)
#* @param day_Sunday Day Sunday (0 or 1)
#* @param day_Thursday Day Thursday (0 or 1)
#* @param day_Tuesday Day Tuesday (0 or 1)
#* @param day_Wednesday Day Wednesday (0 or 1)

#* @get /employee_performance_prediction
#* @param team Team number
#* @param targeted_productivity Targeted productivity
#* @param smv Standard minute value
#* @param wip Work in progress
#* @param over_time Overtime hours
#* @param incentive Incentive hours
#* @param idle_time Idle time
#* @param idle_men Idle men count
#* @param no_of_style_change Number of style changes
#* @param no_of_workers Number of workers
#* @param month Month (0 if not applicable)
#* @param quarter_Quarter1 Quarter 1 (0 or 1)
#* @param quarter_Quarter2 Quarter 2 (0 or 1)
#* @param quarter_Quarter3 Quarter 3 (0 or 1)
#* @param quarter_Quarter4 Quarter 4 (0 or 1)
#* @param quarter_Quarter5 Quarter 5 (0 or 1)
#* @param department_finishing Department finishing (0 or 1)
#* @param department_sewing Department sewing (0 or 1)
#* @param day_Monday Day Monday (0 or 1)
#* @param day_Saturday Day Saturday (0 or 1)
#* @param day_Sunday Day Sunday (0 or 1)
#* @param day_Thursday Day Thursday (0 or 1)
#* @param day_Tuesday Day Tuesday (0 or 1)
#* @param day_Wednesday Day Wednesday (0 or 1)
#* @serializer unboxedJSON

predict_employee_performance <- function(team, targeted_productivity, smv, wip,
                                         over_time, incentive, idle_time, idle_men,
                                         no_of_style_change, no_of_workers, month,
                                         quarter_Quarter1, quarter_Quarter2, quarter_Quarter3,
                                         quarter_Quarter4, quarter_Quarter5, department_finishing,
                                         department_sewing, day_Monday, day_Saturday,
                                         day_Sunday, day_Thursday, day_Tuesday,
                                         day_Wednesday) {
  
  # Create a data frame using the arguments
  to_be_predicted <- data.frame(
    team = as.factor(team),
    targeted_productivity = as.numeric(targeted_productivity),
    smv = as.numeric(smv),
    wip = as.numeric(wip),
    over_time = as.numeric(over_time),
    incentive = as.numeric(incentive),
    idle_time = as.numeric(idle_time),
    idle_men = as.numeric(idle_men),
    no_of_style_change = as.numeric(no_of_style_change),
    no_of_workers = as.numeric(no_of_workers),
    month = as.factor(month),
    quarter_Quarter1 = as.factor(quarter_Quarter1),
    quarter_Quarter2 = as.factor(quarter_Quarter2),
    quarter_Quarter3 = as.factor(quarter_Quarter3),
    quarter_Quarter4 = as.factor(quarter_Quarter4),
    quarter_Quarter5 = as.factor(quarter_Quarter5),
    department_finishing = as.factor(department_finishing),
    department_sewing = as.factor(department_sewing),
    day_Monday = as.factor(day_Monday),
    day_Saturday = as.factor(day_Saturday),
    day_Sunday = as.factor(day_Sunday),
    day_Thursday = as.factor(day_Thursday),
    day_Tuesday = as.factor(day_Tuesday),
    day_Wednesday = as.factor(day_Wednesday)
  )
  
  # Use the loaded model to make predictions
  prediction <- predict(loaded_rf_model, newdata = to_be_predicted)
  
  # Return the prediction
  return(as.character(prediction))
}

