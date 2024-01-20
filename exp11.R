# multiple linear regression !

data(mtcars)

summary(mtcars)

head(mtcars)

set.seed(123)

train_indices = sample(1:nrow(mtcars),0.7*nrow(mtcars))

train_data = mtcars[train_indices,]
test_data = mtcars[-train_indices,]

model = lm(mpg ~ cyl+hp+wt,data=train_data)

summary(model)

predictions = predict(model,newdata = test_data)


mse = mean((predictions - test_data$mpg)^2)
rmse = sqrt(mse)
# r_squared = 1 - (sum((test_data$mpg - predictions)^2) / sum((test_data$mpg - mean(test_data$mpg))^2))
r_squared = 1 - (sum((test_data$mpg - predictions)^2) / sum((test_data$mpg - mean(test_data$mpg))^2))

print(mse)
print(rmse)
print(r_squared)

