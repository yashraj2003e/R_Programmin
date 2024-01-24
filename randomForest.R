library(randomForest)
data(iris)

print(iris)

trainIndices = createDataPartition(iris$Species,p=0.7,list=FALSE,times=1)
trainData = iris[trainIndices,]
testData = iris[-trainIndices,]

model = randomForest(Species ~.,data=trainData)
predictions = predict(model,newdata =testData)
print(table(predictions,testData$Species))
print(length(predictions))
print(length(testData$Species))
