

###################################################
#### Image Compression using SVD ##################
###################################################

#install.packages("jpeg")
library(jpeg)


image.me = readJPEG("E:\\PERSONAL INFORMATION\\PHOTO\\Mahedi Hasan.jpg")

dim(image.me)
ncol(image.me)
nrow(image.me)

r = image.me[,,1]
g = image.me[,,2]
b = image.me[,,3]

dim(r)
dim(g)
dim(b)


image.me.r.svd = svd(r)
image.me.g.svd = svd(g)
image.me.b.svd = svd(b)

image.me.svds = list(image.me.r.svd, image.me.g.svd, image.me.b.svd)






