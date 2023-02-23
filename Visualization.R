## Installing the required package and get the dataset
library(ISLR)

## Let see what are dataset available in ISLR package
data(package = "ISLR")

## Calling a dataset into R
data("Credit")

## To see the list of the variables in the dataset
names(Credit)

## To see the structure of the variables
str(Credit)


#########################################
############## Basic Plots###############
# Histogram
hist(Credit$Age, breaks = 4)

# Bar Chart
counts = table(Credit$Ethnicity)
barplot(counts, main = "Ethnicity Distribution",
        xlab = "Ethnicities", ylab = "Frequency" )


# Density Plot
d = density(Credit$Income)
plot(d, col= "red", main = "Income Distribution", 
                    xlab = "Income", ylab = "Probability")


# Scatter Plot
plot(Credit$Income, Credit$Balance, main = "Scatter Plot between income and Balance", 
            xlab = " Income", ylab = "Balance")








