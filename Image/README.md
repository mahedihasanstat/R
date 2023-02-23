
# Create image from matrix

y = rbind(matrix(data = rnorm(n = 50*20, mean = 100, sd = 2), ncol = 20))
y
dim(y)
image(y)
