# correlation and covariance
library(corrplot)
data(iris)
print(iris)
cor_matrix = cor(iris[,1:4])
corrplot(cor_matrix,addrect=3)
 