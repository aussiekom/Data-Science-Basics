### Naive Bayes Algorithm

In machine learning, the Naive Bayes is a classification algorithm based on Bayes’ theorem. *It is said to be naive because the foundation of this algorithm is based on naive assumptions.* 

Some of the advantages of this algorithm are:

1. It is a very simple algorithm for classification problems compared to other classification algorithms.
2. It is also a very powerful algorithm which implies that it is faster to predict labels using it compared to other classification algorithms.
3. Another advantage of using it is that it can also give better results on small datasets compared to other algorithms.


Like all other machine learning algorithms, it also has some drawbacks. One of the biggest drawbacks that sometimes matters in classification issues is that **Naive Bayes have a very strong assumption that features are independent of each other.** It is therefore difficult to find such datasets in real problems where the features are independent of each other.

**Assumptions:**

* The naive hypothesis of the Naive Bayes classifier states that each entity in the dataset makes an independent and equal contribution to the prediction of the labels.

* Simply put, we can say that we may not find any correlation between features and that each feature has equal importance for the formation of a classification model.

* These assumptions are usually not true when working in real-life problems, but the algorithm still works well, which is why it is known as the “naive” Bayes.



**Types:**

There are three types of Naive Bayes classifiers which depend on the distribution of the dataset:

* **Gaussian:** It is used when the dataset is normally distributed.
* **Multinomial:** It is used when the dataset contains discrete values.
* **Bernoulli:** It is used while working on binary classification problems.


**In the notebook document you can find the implementation of the Naive Bayes algorithms using Iris dataset**


**Conclusion**
This is how easy it is to implement the Naive Bayes algorithm using Python for classification problems in machine learning. Some of the real-time issues where the Naive Bayes classifier can be used are:

* Text Classification
* Spam Detection
* Sentiment Analysis
* Recommendation Systems




