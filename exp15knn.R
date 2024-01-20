library(class)
library(caret)

data(iris)


set.seed(123)
sample_indices = sample(1:nrow(iris),0.7*nrow(iris))

train_data = iris[sample_indices,]
test_data = iris[-sample_indices,]

k = 3

classes = knn(train_data[1:4],test_data[1:4],cl=train_data$Species,k=3)

classes

mat = table(classes,test_data$Species)
mat


conf_matrix = confusionMatrix(classes,test_data$Species)

mat