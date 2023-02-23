
# Create a matrix of 10 columns
y = rbind(matrix(rnorm(100*20)))
y
dim(y)
image(y) 

# Matrix with given inputs 
n.mat = matrix(data = c(2, 3, 1, 4), ncol = 2, byrow = T)
dim(n.mat)
image(n.mat)


# Matrix with a sequence
seq.mat = matrix(data = 1:25, nrow = 5)
dim(seq.mat)
image(seq.mat)





y = rbind(matrix(rnorm(n = 50*20, mean = 100, sd = 2)))
dim(y)
image(y)

y = rbind(matrix(data = rnorm(n = 50*20, mean = 100, sd = 2), ncol = 20))
y
dim(y)
image(y)

d.mat = diag(x = 1, nrow = 10, ncol = 3)
d.mat
image(d.mat)

d.mat = diag(x = rnorm(10), nrow = 10, ncol = 10)
d.mat
image(d.mat)




y = rbind(matrix(rnorm(100*20, mean = 100, sd = 0.25), ncol = 20), 
          cbind(matrix(rnorm(100*10, mean = 100, sd = 1), ncol = 10),
          matrix(rnorm(100*10, mean= 100, sd = 4), ncol = 10)))
y
image(y)

y = matrix(data = 0, nrow = 10, ncol = 10)
image(y)







