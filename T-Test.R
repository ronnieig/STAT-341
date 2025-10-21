#Author: Ronald Britt Jr
#Date: 10/21/2025
#Purpose: Calculate T test

#Get dummy dataset for 2 variables
x = rnorm(10)
y = rnorm(10)

#Create a density lot
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Calculate T test
ttest = t.test(x,y)
ttest
 Welch Two Sample t-test

data:  x and y
t = 1.3656, df = 17.377, p-value = 0.1895
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.3809526  1.7854868
sample estimates:
 mean of x  mean of y 
 0.4817752 -0.2204919 