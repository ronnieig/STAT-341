#Author: Ronald Britt Jr
#Date: September 9th, 2025 (09/09/2025)
#Purpose: Create a regression model between mpg ~ gear
#Use this regression model to do predictions on test data
#Print the output
#Save ouput and R program in a file Assignment2.R
#Upload to Github Repository under the class repository

#Get dataset
cars <- mtcars

#Splitting the training data and test data for the regression
TrainingData <- cars[1:16,]
TestData <- cars[17:32,]

#Building the regression model
#This shows the correlation between mpg and gear
RegressionModel <- lm(mpg ~ gear,  data=TrainingData)

#Predicting the regression function on the test data
Prediction <- predict(RegressionModel, TestData)

#Results of the prediction
#Data frame begins building the frame to print the prediction results
#Cbind is used to bind the data into a column
PredictionResults <- data.frame(cbind(values=TrainingData$mpg, Predictables=Prediction))