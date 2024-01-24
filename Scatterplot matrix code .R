#Script by Clayton Aylor
#Date: 3/1/23
#Assignment2

# I imported my data set from the environment window 

#setting our data set as a variable 
dat<-income

#set seed to get same values
set.seed(1234)

#split data set by 70/30
index <- sample(x = 1:dim(dat)[1],size = ceiling(0.70*dim(dat)[1])) 

#create training_set
training_set <- dat[index,] 

#create testing_set (negative index so we have all different values than out testing_set)
testing_set <- dat[-index,]

# createsconfusion matrix
library(car)
scatterplotMatrix(dat[2:4])

#summary of training_set model
summary(lm1 <- lm(formula = Income~ Age, data = training_set))

#summary of testing_set model
summary(lm2 <- lm(formula = Income~ Age, data = testing_set))
