#Assignment 8.2

#library(RcmdrPlugin.IPSUR)
#data(RcmdrTestDrive)
#Perform the below operations:
#1.	Compute the measures of central tendency for salary and reduction which variable has highest center?
 
# Solution:

library(RcmdrPlugin.IPSUR)
x<- c(mean(RcmdrTestDrive$salary),median(RcmdrTestDrive$salary))
x
[1] 724.5164 710.1500

#Reduction

y<- c(median(RcmdrTestDrive$reduction),mean(RcmdrTestDrive$reduction))
y
[1] 139.500 223.631


#we can check for variable which has highest center by plotting histogram or by checking kurtosis which describes the amount of peakedness of a distribution.

> library(psych)
> kurtosi(RcmdrTestDrive$salary)
[1] 0.2006576
> kurtosi(RcmdrTestDrive$reduction)
[1] 10.01655



#thus we can see variable reduction has more kurtosis thus more peaked hence more highest center


#or by plotting histogram we can also check that
x<-RcmdrTestDrive$salary
h<- hist(x,breaks = 10,col = "red",xlab = "salary",main= "histogram of salary with normal curve")

y<-RcmdrTestDrive$reduction
h<- hist(y,breaks = 10,col = "blue",xlab = "reduction",main= "histogram of reduction with normal curve")


#however as reduction is not purely continuous hence for center we cant see peak of this in from center
#in that manner salary is more peaked from center as it is purely continous
#howsoever variable reduction is more peaked if we talk about the peakedness from whole data
#by seeing histo curve overall as compare to salary variable


#2. Which measure of center is more appropriate for before and after?

#Solution:
Boxplot to find mean and median
boxplot(RcmdrTestDrive$before,horizontal = T,col = "red",xlab="before",ylab="Boxplot") 
left skewed as the data is assymetrical distributed


if we check the skewness of variables 

skew (RcmdrTestDrive$before)
[1] -0.03510369
skew (RcmdrTestDrive$after)
[1] -1.164056

#after more negative so data more on right side as compare to before variable
