library(rpart)
library(caret)
data(iris)

sample_indices = sample(1:nrow(iris),0.7*nrow(iris))

train_data = iris[sample_indices,]
test_data = iris[-sample_indices,]

model = rpart(Species ~.,data=train_data,method="class")

predictions = predict(model,test_data,type="class")

typeof(predictions)

test_data

mat = confusionMatrix(predictions,test_data$Species)


tablee = table(predictions,test_data$Species)
tablee


accuracy = mat$overall["Accuracy"]
precision = tablee[2,2] / sum(tablee[,2])
recall = tablee[2,2] / sum(tablee[2,])
f1_score = 2 * (precision*recall) / (precision + recall)

print(accuracy)
print(precision)
print(recall)
print(f1_score)