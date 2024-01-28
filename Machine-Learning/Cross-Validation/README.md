### Cross Validation

In Machine Learning, Cross-validation is a statistical method of evaluating generalization performance that is more stable and thorough than using a division of dataset into a training and test set.


**What is cross-validation?**
<img width="540" alt="Screenshot 2024-01-28 at 4 54 36 PM" src="https://github.com/aussiekom/Data-Science-Basics/assets/102028836/d0f5ba0e-7bd9-4b0e-8ace-aae0be28857a">

In cross-validation, the data is instead split multiple times and multiple models are trained. The most commonly used version of cross-validation is k-times cross-validation, where k is a user-specified number, usually 5 or 10.


In five-way cross-validation, the data is first partitioned into five parts of (approximately) equal size, called folds. Then, a sequence of models is formed. The first model is trained using the first fold as a test set, and the remaining folds (2–5) are used as a training set.

The model is built using data from folds 2 to 5, then the precision is evaluated on fold 1. Then another model is built, this time using fold 2 as the test set and the data from folds 1, 3, 4 and 5 as a training set.

This process is repeated using folds 3, 4 and 5 as test sets. For each of these five divisions of the data into training and testing sets, we calculate the precision. In the end, we collected five precision values.
