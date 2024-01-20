# PCA

df = data(USArrests)

df = USArrests

head(df)

scaled_data = scale(df)

head(df)
head(scaled_data)

# Perform PCA

pca_result = prcomp(scaled_data)

print(summary(pca_result))

loadings_matrix = pca_result$rotation
print(loadings_matrix)

scores = as.data.frame(pca_result$x)
scores

plot(pca_result$sdev^2 / sum(pca_result$sdev^2),type="b",
     main = "Scree Plot",xlab = "Principal Component",ylab = "Proportion of Variance")

par(mar=c(5,5,2,2))
biplot(pca_result)

