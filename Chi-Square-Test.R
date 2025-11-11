#Author: Ronald Britt Jr
#Date: 11/11/2025
#Purpose: Test the chi square analysis

#Load dummy dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")
head(data_frame)

table(data_frame$treatment, data_frame$improvement)

              improved not-improved
  not-treated       26           29
  treated           35           15

#apply chi square function to check the difference between treatment and improvement
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

        Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841