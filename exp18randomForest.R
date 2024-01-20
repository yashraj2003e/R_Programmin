library(randomForest)

data(iris)

train_indices = sample(1:nrow(iris),0.7*nrow(iris))

train_data = iris[train_indices,]
test_data = iris[-train_indices,]

model = randomForest(Species ~.,train_data)

predictions = predict(model,test_data)

mat = table(predictions,test_data$Species)
mat
plot(model)
