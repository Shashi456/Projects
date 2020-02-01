# Convolutional Neural networks for text
## Keypoints
### Feature Combinations
- As looked at in the last class, looking at the sentiment classification problem, solutions like CBOW, Deep CBOW (non linearities before weight based dot product and bias addition). The deep in CBOW represents the ability of multiple MLP layers to learn feature combinations.
- Bag of ngrams solution was also introduced. A bag of ngrams is always a decent baseline. The problems of bag of ngrams model is that, parameter explosion and the sequence order at the global level is lost.
-  The solution for these problems was introduced by neural sequence models. Most of NLP tasks can be formalized as a sequence representation learning problem.
- The sequences of characters has to go through a composition functions. There are a variety of composition functions CBOW, bag of n-grams, CNNs, RNNs, Transformers, GraphNNs.
<img src=''>
### CNNs
-  Priori entailed by CNNS, Look at the following figure.
<img src=''>
-  The different things as a result of using CNNS as a composition functions are :
  - Local bias : Because of the usage of a convolution, the filter of a convolution helps for words to interact with their neighbours, and similarly when it comes to deeper layers it could be thought of different "set of words" interacting with each other, until see they the global picture.
  - The same filter(parameters) are shared by all the words/features in a given layer.
- Basics of convolution : learn about 2d convolution, stride, padding, 3 types of convolutions : narrow, equal, wide. Size of output tuple in 1-D convolution is (m - n + 1, where m is the input size, and n is the filter size.), pooling.
- The reason for having multiple filters, multiple filters help us capture different features of the underlying data.
- Pooling is an aggregation operation, the different aggregation operators can be Max pooling, Min pooling, Average pooling, k-max pooling and dynamic pooling.
### CNNs for Text Classification (Kim et al 2015)
- Task : Sentiment classification
- Model : Embedding layer -> Multi Channel CNN layer -> pooling/output layer.
<img src=''>
- Output Layer : MLP Layer -> Dropout (Optional, can be introduced at multiple places in the network) -> Softmax
### CNN variants
- Two important questions to ask with CNNs, How to handle long term dependencies, How to handle different types of compositionality?
- The solution to model long term dependencies is to have dilated convolutions. (dilated convolutions Kalchbrenner et al 2016.)
- The solution for complicated interaction is the dynamic filters. (Dynamic Filters Brabandere et al 2016). Filters are dynamically generated after conditioning on input.
### CNN Applications
- Word level(Representation of sentences, phrasal patterns are captured) and Character level(Representation of a word, morphological patterns are captured) CNNs.
- NLP (Almost) from scratch Collobert et al 2011. Also, "A unified architecture for NLP" collobert et al 2008.
- CNN-RNN-CRF for tagging. Ma et al 2016.
### Structured Convolution
- Some structures of languages are not captured by normal CNNs.
- Tree Structure Conv (Mou et al 2014, Ma et al 2015), Graph Convolution( Marcheggiani et al 2017)

## How to make a decision for the composition function?
- Understand the design philosophy of a model : Inductive bias, Structural bias.
- Structural bias can be introduced by Locality(Local or non local), Topological structure (Sequential, tree or graph).
