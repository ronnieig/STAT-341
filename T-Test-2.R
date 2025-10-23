#Author: Ronald Britt Jr
#Date: 10/23/2025
#Purpose: Perform T-Test FUnction

#Create 2 Dummy Variables
x = rnorm(10)
y = rnorm(10)
x
y

#Create a density plot for x and y
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Apply the ttest function to calculate P value
ttest = t.test(x,y)
ttest
        Welch Two Sample t-test

data:  x and y
t = 1.7587, df = 16.86, p-value = 0.09677
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.1714992  1.8828774
sample estimates:
 mean of x  mean of y 
 0.5759638 -0.2797253 