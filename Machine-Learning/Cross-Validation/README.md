### Cross Validation


In Machine Learning, Cross-validation is a statistical method of evaluating generalization performance that is more stable and thorough than using a division of dataset into a training and test set.



**What is cross-validation?**
<img width="540" alt="Screenshot 2024-01-28 at 4 54 36 PM" src="https://github.com/aussiekom/Data-Science-Basics/assets/102028836/d0f5ba0e-7bd9-4b0e-8ace-aae0be28857a">

In cross-validation, the data is instead split multiple times and multiple models are trained. The most commonly used version of cross-validation is k-times cross-validation, where k is a user-specified number, usually 5 or 10.


In five-way cross-validation, the data is first partitioned into five parts of (approximately) equal size, called folds. Then, a sequence of models is formed. The first model is trained using the first fold as a test set, and the remaining folds (2–5) are used as a training set.

The model is built using data from folds 2 to 5, then the precision is evaluated on fold 1. Then another model is built, this time using fold 2 as the test set and the data from folds 1, 3, 4 and 5 as a training set.

This process is repeated using folds 3, 4 and 5 as test sets. For each of these five divisions of the data into training and testing sets, we calculate the precision. In the end, we collected five precision values.


### Benefits & Drawbacks of Using Cross-Validation

There are several advantages to using cross-validation instead of a single division into one training and one set of tests. First of all, remember that train_test_split performs a random division of data.

Imagine that we are “lucky” at randomly splitting the data, and all the hard-to-categorize examples end up in the training set. In this case, the test set will only contain “simple” examples, and the accuracy of our test set will be unrealistic.

Conversely, if we are “unlucky” we may have randomly placed all of the hard-to-rank examples in the test set and therefore have an unrealistic score.

However, when using cross-validation, each example will be in the test set exactly once: each example is in one of the folds, and each fold is the test set once. Therefore, the model must generalize well to all samples in the dataset for all cross-validation scores (and their mean) to be high.

Having multiple splits of the data also provides information about the sensitivity of our model to the selection of the training data set. For the iris dataset, we saw accuracies between 90% and 100%. That’s quite a range, and it gives us an idea of ​​how the model might work in the worst-case scenario and the best-case scenario when applied to new data.

Another advantage of cross-validation over using a single data division is that we use our data more efficiently. When using train_test_split, we typically use 75% of the data for training and 25% of the data for evaluation.

When using five-fold cross-validation, on each iteration we can use four-fifths of the data (80%) to fit the model. When using 10 cross-validations, we can use the nine-tenths of the data (90%) to fit the model. More data will generally result in more accurate models.

The main disadvantage is the increase in computational costs. Since we are currently training k models instead of a single model, the cross-validation will be about k times slower than doing a single division of the data.
