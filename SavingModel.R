library(caret)
library(randomForest)

# Train Random Forest model excluding 'team' variable
model_rf <- train(
  targeted_productivity ~ .,
  data = employee_data,
  method = "rf",
  trControl = trainControl(method = "cv", number = 10)
)

# Save the best Random Forest model
saveRDS(model_rf$finalModel, "./models/random_forest_model.rds")

# Load the saved model
loaded_rf_model <- readRDS("./models/random_forest_model.rds")

# Prepare new data for prediction (without 'team')
new_data <- data.frame(
  targeted_productivity = 0.75,
  smv = 4.08,
  wip = 0,
  over_time = 1080,
  incentive = 0,
  idle_time = 0,
  idle_men = 0,
  no_of_style_change = 9,
  no_of_workers = 1,
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
required_variables <- loaded_rf_model$finalModel$xNames  # ✅ Get expected variable names

# Check for missing variables in new_data
missing_variables <- setdiff(required_variables, colnames(new_data))

# Remove missing variables if necessary
if (length(missing_variables) > 0) {
  required_variables <- setdiff(required_variables, missing_variables)
}

# Subset new_data to include only required variables
new_data_subset <- new_data[, required_variables, drop = FALSE]  # ✅ Prevent conversion to vector

# Make predictions using the loaded model
predictions_loaded_model <- predict(loaded_rf_model, newdata = new_data_subset)

# Print predictions
print(predictions_loaded_model)
