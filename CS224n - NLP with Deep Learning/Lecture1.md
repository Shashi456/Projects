# Introduction and Word Vectors 
- Humans assume this background knowledge, while communication, and this allows to say more in less.
- Words have meaning 
    - Linguists think of it in terms of denotional semantics -> symbol mapping to a word
- Wordnet -> List of synonym sets and hypernyms("is a" relationship)
    - Does fine grained distinction between senses of a word.
    - Missing nuance
    - Missing new meanings of words
    - Doesnt scale and hard to compute word similarity
- Words, earlier, had a localist representation
    - One hot encoding 
    - One hot vectors are orthogonal to each other, and there is no notion of similarity between them.
- Derivational Morphology gives rise to millions of words, so its an infinite space
- Encode similarity in word vectors themselves
## Distributional Semantics 
- Word's meaning is given by the words that frequently appear close by, basically context can give meaning.
    - context is the set of words that appear nearby (within a fixed size window)
    - Build dense word vectors and are called word embeddings/ representations, they are distributional representations
- A lot of meaning can get killed in the projections down to lower spaces
- Word2Vec
    - Given a large corpus of text, every word in a fixed vocab is represented by a vector
    <img src='./Images/Lecture 1/word2vec.jpg'>
    - Go through each position t in the text, which has a center word c and contet words o
    - Calculate probability o given c 
    - The objective function is the negative log likelihood
    - Minimizing objective function <-> maximizing predictive accuracy
    <img src='./Images/Lecture 1/word2veco.jpg'>
    - Interpretation of final loss -> Observed representations of the word and subtracting the weighted average of the expected context in the model.

