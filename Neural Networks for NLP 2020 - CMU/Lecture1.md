# Lecture 1 - Introduction, Bag of Words and Multi-Layer Perceptron
## Key points 
- Languages are hard to understand, sentences in one language might make sense in
others.
- Engineering solutions for sentences would involve, creating a grammar of the language, considering morphology and exceptions and semantic categories, preferences and their exceptions.
- The phenomena to handle for language is morphology, syntax, semantics, discourse, pragmatics and multi-linguality, given a rule based approach these are a lot of rules to handle. 
- Neural networks are good function approximators and are good tools to do hard things. 
## Consider a simple classification task
- Given a simple sentence prediction task, one approach to solve this is in a bag of words model, in which each word will be looked up through a bag of words and scored which will added up in addition to a bias term resulting in scores which then are parsed through a softmax and you get the probability of it being out of each of the class. 
- A bag of words model would fail given a sentence "There's nothing i don't love about this movie", which has to be classified as (very good, good, neutral, bad and very bad), because it has more negative words than positive words, and it would be classified as a bad(sentiment) sentence. 
- Another approach is a Continuous bag of words model, this is a bag of word models, in which instead of looking up scores you look up the embeddings of these words which are averaged into a vector, and multiplied by a weight matrix added to a bias and similarly put through another softmax vector to get class probabilities. This is not much powerful than the bag of words model, because it is still a linear combination of the vectors and <i>W*[sentence vector]</i> would still result into something similar like the bag of vectors model. But this model reduces dimensions significantly.
- A deep CBOW model, is similar to a CBOW model but then the weight*sentence vector is sent through multiple non-linearities and then ultimately sent through a softmax to get class probabilities. Each non-linearity could itself be thought of as a classification problem.  
## What is a neural network?
- Can be thought of as a computation graph, The original motivation was neural in the brain while current conceptions are mostly computational graphs. 
-  A node is a n-dimensional tensor and the edges in the computational graph represent functions, each node has the capability of computing the derivatives. 
- Computational Graphs are DAGs (directed acyclic graphs.)
- Given a computational graph, forward propagation is the calculation of the graph in topological order.  
- What we are also interested is the gradient calculation, What this does is the back propagation, at the end you have a loss function and wrt to it you calculate the back propagation through the edges of the graph. 
- Then the parameters of the model are moved in the direction of this derivative. 


