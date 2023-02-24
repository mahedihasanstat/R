

library(ISLR)
data("Credit")
names(Credit)
str(Credit)

data.cor = Credit[, 2:7]
names(mydata)

cor.data = cor(data.cor)
cor.data

library(ggplot2)
library(reshape2)

data.melt = melt(cor.data)
data.melt

ggplot(data.melt, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() + scale_fill_gradient(high = "blue", low = "white")


ggplot(data.melt, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() + scale_fill_distiller(palette = "Spectral")




