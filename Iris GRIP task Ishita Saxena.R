View(Iris)
attach(Iris)
Iris.features = Iris
Iris.features$Id <- NULL
Iris.features$Species <- NULL
report <- kmeans(Iris.features, 3)
report
report$cluster
table(Iris$Species, report$cluster)
plot(Iris, col = report$cluster)
