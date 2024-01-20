library(e1071)
library(caret)

data(iris)

sample_indices = sample(1:nrow(iris),0.7*nrow(iris))

train_data = iris[sample_indices,]
test_data = iris[-sample_indices,]

model = naiveBayes(Species ~.,train_data)

predictions = predict(model,test_data)

conf_matrix = table(predictions,test_data$Species)

conf_matrix

c1onf_matrix = confusionMatrix(predictions,test_data$Species)
c1onf_matrix

accuracy = c1onf_matrix$overall["Accuracy"]
precision = conf_matrix[2,2] / sum(conf_matrix[,2])
recall = conf_matrix[2,2] / sum(conf_matrix[2,])
f1_score = 2 * (precision*recall) / (precision+recall)

print(accuracy)
print(precision)
print(recall)
print(f1_score)
