# Saving the best Random Forest model
saveRDS(model_rf$finalModel, "./models/random_forest_model.rds")

# Load the saved model
loaded_rf_model <- readRDS("./models/random_forest_model.rds")

# Prepare new data for prediction
new_data <- data.frame(
  team = factor(12),
  targeted_productivity = 0.75,
  smv = 4.08,
  wip = 0,
  over_time = 1080,
  incentive = 0,
  idle_time = 0,
  idle_men = 0,
  no_of_style_change = 9,
  no_of_workers = 1,
  month = factor(0),
  quarter_Quarter1 = factor(0),
  quarter_Quarter2 = factor(0),
  quarter_Quarter3 = factor(0),
  quarter_Quarter4 = factor(0),
  quarter_Quarter5 = factor(0),
  department_finishing = factor(1),
  day_Friday = factor(0),
  department_sewing = factor(1),
  day_Monday = factor(0),
  day_Saturday = factor(1),
  day_Sunday = factor(0),
  day_Thursday = factor(0),
  day_Tuesday = factor(0),
  day_Wednesday = factor(0)
)

# Ensure new_data contains all necessary variables used in the model
required_variables <- colnames(model_rf$finalModel$terms)

# Check for missing variables in new_data
missing_variables <- setdiff(required_variables, colnames(new_data))

# If any variables are missing, remove them from the required variables list
if (length(missing_variables) > 0) {
  required_variables <- setdiff(required_variables, missing_variables)
}

# Subset new_data to include only required variables
new_data_subset <- new_data[, required_variables]

# Use the loaded model to make predictions
predictions_loaded_model <- predict(loaded_rf_model, newdata = new_data_subset)

# Print predictions
print(predictions_loaded_model)
