library(caret)
library(e1071)

data(iris)

trainIndex = createDataPartition(iris$Species,times=1,list=FALSE,p=0.7)
trainData = iris[trainIndex,]
testData = iris[-trainIndex,]

#svm_model
svm_model = svm(Species~.,data=trainData)
predictions = predict(svm_model,newdata=testData)
print(confusionMatrix(predictions,testData$Species))