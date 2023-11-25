# upload the data
iris = read.csv('iris dataset.csv')

# plot the data to understand the distribution
setosa = subset(iris, flower == "Iris-setosa")
virginica = subset(iris, flower == "Iris-virginica")
versicolor = subset(iris, flower == "Iris-versicolor")

plot(setosa$petal_length, 
     setosa$petal_width, 
     col = "#FF6C90", 
     xlim=c(0,7), 
     ylim=c(0,2.5),
     xlab="Petal length", 
     ylab="Petal width")
par(new = T)

plot(versicolor$petal_length, 
     versicolor$petal_width, 
     col = "#39B600", 
     xlim=c(0,7), 
     ylim=c(0,2.5), 
     xlab="", ylab="")
par(new = T)

plot(virginica$petal_length, 
     virginica$petal_width, 
     col = "#529EFF", 
     xlim=c(0,7), 
     ylim=c(0,2.5), 
     xlab="", 
     ylab="")

# remove column 'flower' from iris data set, and make a matrix out of the data
iris_df = subset(iris, select = c(1,2,3,4))

# standardize it i.e. for each column make mean = 0 and variance = 1, 
# this is achieved by subsracting mean of a column from each entry in the column 
# and dividing each entry in that column by the column's standard deviation
iris_df$sepal_length = iris_df$sepal_length - mean(iris_df$sepal_length)
iris_df$sepal_width = iris_df$sepal_width - mean(iris_df$sepal_width)
iris_df$petal_length = iris_df$petal_length - mean(iris_df$petal_length)
iris_df$petal_width = iris_df$petal_width - mean(iris_df$petal_width)

iris_df$sepal_length = iris_df$sepal_length/sd(iris_df$sepal_length)
iris_df$sepal_width = iris_df$sepal_width/sd(iris_df$sepal_width)
iris_df$petal_length = iris_df$petal_length/sd(iris_df$petal_length)
iris_df$petal_width = iris_df$petal_width/sd(iris_df$petal_width)

# after standardizing, perform eigen decomposition i.e. 
# compute the eigenvalues and vectors of features (here there are 4 features)
# first obtain covariance matrix of features
cov_matrix = cov(iris_df) 

# compute eigenvalues and vectors
iris_eigen = eigen(cov_matrix)

# iris_eigen is a list, first element in the list is set of eigenvalues, 
# second element in the list is set of eigen vectors
eigen_values = iris_eigen[1]
eigen_vectors = iris_eigen[2]

# transform iris data set (which is 4D) into 2D space:
# choose the first two largest eigen values and construct the
# transformation matrix out of it. 
# let's choose eigen vectors corresponding to first two largest 
# eigenvalues and these are our as principal components. 
# Project the IRIS data frame onto these eigen vectors
# and make a matrix of shape (4x2)
eigen_vectors = do.call(rbind, eigen_vectors)	# eigen_vectors now in matrix form
W = eigen_vectors[,1:2] 	                    # W is transformation matrix formed by first two columns (eigen_vectors)
class(iris_df)			                          # iris dataset is in data frame format
iris_matrix = data.matrix(iris_df)	          # converting it to matrix form
result = iris_matrix %*% W		                # after transformation

# let's label the flower names again
result = data.frame(result)		                # converting from matrix format to data frame format
result$flower = 0			                        # added new column 'flower' to result data frame
result$flower = iris$flower		                # mapping flower names of original dataset to result data frame
colnames(result)[1] = "principal_component_1"	# rename column-1 is result data frame to 'principal_component_1'
colnames(result)[2] = "principal_component_2"	# rename column-2 is result data frame to 'principal_component_2'

# plot the transformed data
setosa = subset(result, flower == "Iris-setosa")
virginica = subset(result, flower == "Iris-virginica")
versicolor = subset(result, flower == "Iris-versicolor")

plot(setosa$principal_component_1, 
     setosa$principal_component_2, 
     col = "#FF6C90", 
     xlim=c(-3,4), 
     ylim=c(-3,3), 
     xlab="sepal length", 
     ylab="sepal width")
par(new = T)

plot(versicolor$principal_component_1, 
     versicolor$principal_component_2, 
     col = "#39B600", 
     xlim=c(-3,4), 
     ylim=c(-3,3), 
     xlab="sepal length", 
     ylab="sepal width")
par(new = T)

plot(virginica$principal_component_1, 
     virginica$principal_component_2, 
     col = "#529EFF", 
     xlim=c(-3,4), 
     ylim=c(-3,3), 
     xlab="sepal length", 
     ylab="sepal width")


# We can see that the transformed data plot matches the original data plot i.e. we see the same trend in 
# our new plot as we have seen in old plot. 
# Red color indicates setosa, green indicates versicolor, blue indicates virginica



