#Assignment 8.1

#1. Use the package RcmdrPlugin.IPSUR.
#data(RcmdrTestDrive)
#and perform the below operations:
 
# a.Calculate the average salary by gender and smoking status.

#Solution:

#data(RcmdrTestDrive)
#of salary
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, mean)
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$smoking, mean)


# b.Which gender has the highest mean salary?
  
#Solution:
    
#genders mean salary respectively

#Female     Male 
#698.0911 743.3915

#male gender is highest
  
# c.Report the highest mean salary.

#Solution:
mean(RcmdrTestDrive$salary)
724.5164

#The mean of salary
which.max(RcmdrTestDrive$salary)
#152



# d.Compare the spreads for the genders by calculating the standard deviation of salary by gender.

#Solution:

tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, sd

#Female     Male 
#130.7053 158.5423
#for answering the compareness of spreads of genders lets plot boxplot

boxplot(salary~gender,data= RcmdrTestDrive,main="salary versus gender",xlab="gender",ylab="salary",col=topo.colors(2))
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, mean
#as from mean only there is sd deviate takes place
          
          
#we can aslo plot histogram by genders to compare spreadness
hist(which(RcmdrTestDrive$gender == "Male") ,xlab = "gender male", ylab = "frequency",main="histogram of gender",col="red")
hist(which(RcmdrTestDrive$gender == "Female") ,xlab = "gender female", ylab = "frequency",main="histogram of gender",col="blue")
          