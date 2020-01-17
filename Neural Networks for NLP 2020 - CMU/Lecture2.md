# Lecture 2 - Language Modeling, Efficiency/Training Tricks
# Key points
-  Sentences can be acceptable depending on the language. 
## Language Modeling
- Language Modeling is the calculating the probability of a sentence i.e the 
distribution of sentences that is how often they appear in the language.
- This is done by conditioning on the previous words, also called as an autoregressive manner of prediction.
### Count Based Language Models
- The paper, "A bit of progress in language modeling", suggests this model.
- These are standard n-gram language models. The count of x<sub>i</sub> words is calculated and is then divided by the count of x<sub>i-1</sub> words, to get the probability of the language model. 

