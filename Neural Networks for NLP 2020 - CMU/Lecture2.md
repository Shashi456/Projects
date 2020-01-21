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
## Evaluation of language models
- Log-likelihood - Predict the probability of text.
- Per-word Log-likelihood
- Per word Cross Entropy - How small can you compress the dataset in a amount of bits
- Perplexity - Exponentiated entropy, The intuitive idea is, how many times would you have to randomly guess according to your probability distribution before you guess the next word correctly. (The lower the better)
## What can we do with LMs
- Scoring the coherence of a sentence.
- Language models as knowledge bases (Paper).
- Generate sentences based on either some pregiven context or randomly. (CTRL, GPT2 etc)
