library(class)

set.seed(42)

X <- iris[, 1:4]

y <- iris[, 5]


train <- sample(nrow(iris), nrow(iris)*2/3)


train_X <- X[train, ]
train_y <- y[train]

val_X <- X[-train, ]
val_y <- y[-train]


val_predictions <- knn(train_X, val_X, train_y, k=1)


table(val_predictions, val_y)
