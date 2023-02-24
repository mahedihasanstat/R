################################################################
############## Image from different types of matrices ##########
################################################################

## Zero Matrix
zero.mat = matrix(data = 0, nrow = 10, ncol = 10)
image(zero.mat)


## Matrix with given inputs 
n.mat = matrix(data = c(2, 3, 
                        1, 4), ncol = 2, byrow = T)
dim(n.mat)
image(n.mat)


## Matrix with a sequence
seq.mat = matrix(data = 1:25, nrow = 5)
dim(seq.mat)
image(seq.mat)


## singular matrix
sing.mat1 = matrix(data = c(1, -2, 
                            -3, 6), nrow = 2, byrow = T)
image(sing.mat1)

sing.mat2 = matrix(data = c(1, 1, 1, 
                            0, 1, 0, 
                            1, 0, 1), nrow = 3, byrow = T)
image(sing.mat2)

# Inverse does not exist
solve(sing.mat2)


## Orthogonal Matrix
ortho.mat1 = matrix(data = c(1, 0, 
                             0, -1), nrow = 2, byrow = T)
image(ortho.mat1)

# Inv(ortho.mat) == transpose(ortho.mat)
solve(ortho.mat)==t(ortho.mat)


ortho.mat2 = matrix(data = c(1, 0, 
                             0, 1), nrow = 2, byrow = T)
image(ortho.mat2)


ortho.mat3 = matrix(data = c(0, 0, 0, 1,
                             0, 0, 1, 0,
                             1, 0, 0, 0,
                             0, 1, 0, 0), nrow = 4, byrow = T)

image(ortho.mat3)



## Unitary Matrix
unit.mat = matrix(data = c(1/sqrt(2), 1/sqrt(2),
                           i/sqrt(2), -i/sqrt(2)), nrow = 2, byrow = T)


image(unit.mat)



unit.mat2 = matrix(c(1, 0, 
                     0, i), nrow = 2, byrow = T)




#####################################################################
########## Image of Matrices from Prob Distribution #################

## Normal distribution
# STD normal distribution
norm.mat1 = rbind(matrix(rnorm(100*20)))
norm.mat1
dim(norm.mat1)
image(norm.mat1) 


## Normal dist with fixed mean and SD
norm.mat2 = rbind(matrix(rnorm(n = 50*20, mean = 100, sd = 2)))
image(norm.mat2)


## Multiple matrices in one frame
norm.mat3 = rbind(matrix(rnorm(100*20, mean = 10, sd = 0.25), ncol = 20), 
          cbind(matrix(rnorm(100*10, mean = 5, sd = 1), ncol = 10),
                matrix(rnorm(100*10, mean= 2.5, sd = 3), ncol = 10)))
image(norm.mat3)





