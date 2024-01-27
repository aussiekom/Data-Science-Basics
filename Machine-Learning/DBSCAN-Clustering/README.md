### DBSCAN Clustering

DBSCAN stands for Density-Based Spatial Clustering for Applications with Noise. This is an unsupervised clustering algorithm which is used to find high-density base samples to extend the clusters. 

**The DBSCAN Clustering algorithm is based on the concept of core samples, non-core samples, and outliers:**

* Core Samples: The samples present in the high-density area have minimum sample points with the eps radius.
* Non-core samples: The samples close to core samples but are not core samples but are very near to the core samples. The no-core samples lie within the eps radius of the core samples but they don’t have minimum samples points.
* Outliers: The samples that are not part of the core samples and the non-core samples and are far away from all the samples.


The DBSCAN clustering algorithm works well if all the clusters are dense enough and are well represented by the low-density regions.


**Summary**

DBSCAN clustering algorithm is a very simple and powerful clustering algorithm in machine learning. It can identify any cluster of any shape. It is robust to outliers and has only two hyperparameters. *It may be difficult for it to capture the clusters properly if the cluster density increases significantly.*
