## Installing the required package and get the dataset
#install.packages("ISLR")

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



#######################################################
################### ggplot ############################

#install.packages("ggplot2")
library(ggplot2)

# Lets make a basic Scatter Plot using ggplot2
ggplot(data = Credit, aes(x = Income, y = Balance))+
  geom_point()

# Lets label the graph and do some experiments with different parameters
ggplot(data = Credit, aes(x = Income, y = Balance))+
  geom_point(size = 5, color = "blue", shape = "*")+
  labs(title = "Income vs Balance Distribution", x = "Income of the respondents", y = "Balance")

# Lets now add a facet on the graph
ggplot(data = Credit, aes(x = Income, y = Balance))+
  geom_point()+
  labs(title = "Income vs Balance Distribution", x = "Income of the respondents", y = "Balance")+
  facet_grid(.~Married)

# Can we fit a linear line on the scatter plots?
ggplot(data = Credit, aes(x = Income, y = Balance))+
  geom_point()+
  labs(title = "Income vs Balance Distribution", x = "Income of the respondents", y = "Balance")+
  facet_grid(.~Married) +
  geom_smooth(method = "lm")

# Can we also see the relationship by a third variable, let say Gender?
ggplot(data = Credit, aes(x = Income, y = Balance, color = Gender))+
  geom_point()+
  labs(title = "Income vs Balance Distribution", x = "Income of the respondents", y = "Balance")+
  facet_grid(.~Married) +
  geom_smooth(method = "lm")

# Lets add another factor in this relationship and see what happens!
ggplot(data = Credit, aes(x = Income, y = Balance, color = Gender))+
  geom_point()+
  labs(title = "Income vs Balance Distribution", x = "Income of the respondents", y = "Balance")+
  facet_grid(Student~Married) +
  geom_smooth(method = "lm", se= F)

# How about introducing polynomials in the relationship but be careful about the polynomial order!!!
ggplot(data = Credit, aes(x = Income, y = Balance, color = Gender))+
  geom_point()+
  labs(title = "Income vs Balance Distribution", x = "Income of the respondents", y = "Balance")+
  facet_grid(Student~Married) +
  geom_smooth(method = "lm", formula = y ~ x + (poly(x, 2)-1), se = F)

# Another Way to do Polynomial regression
ggplot(data = Credit, aes(x = Income, y = Balance, color = Gender))+
  geom_point()+
  labs(title = "Scatter plot between Income and Balance", x = "Income", y = "Balance")+
  facet_grid(Ethnicity~ Married)+
  geom_smooth(method = "lm", formula = y ~ x + I(x^2), size = 1)

# Polynoial regression using poly function
ggplot(data = Credit, aes(x = Income, y = Balance, color = Gender))+
  geom_point()+
  labs(title = "Scatter plot between Income and Balance", x = "Income", y = "Balance")+
  facet_grid(Ethnicity~ Married)+
  geom_smooth(method = "lm", formula = y ~  poly(x, 2), size = 1)


# Loess regression
ggplot(data = Credit, aes(x = Income, y = Balance, color = Gender))+
  geom_point()+
  labs(title = "Scatter plot between Income and Balance", x = "Income", y = "Balance")+
  facet_grid(Ethnicity~ Married)+
  geom_smooth(method = "loess", formula = y~x, size = 1)

# Finally, lets work with some theme on the graph
ggplot(data = Credit, aes(x = Income, y = Balance, color = Gender))+
  geom_point()+
  labs(title = "Income vs Balance Distribution", x = "Income of the respondents", y = "Balance")+
  facet_grid(Student~Married) +
  geom_smooth(method = "lm", formula = y ~ x + (poly(x, 2)-1), se = F)+
  theme(
    plot.title = element_text(color="red", size=14, face="bold", hjust = 0.5),
    axis.title.x = element_text(color="blue", size=12, face="bold"),
    axis.title.y = element_text(color="#993333", size=12, face="bold")
  )
