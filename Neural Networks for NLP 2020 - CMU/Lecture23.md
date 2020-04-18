# Machine Reading with Neural nets
- Machine Reading -> Read a passage, try to answer question about that passage.
    - The passage is the knowledge base
- Machine Reading Tasks
    - Multiple Choice Question
    - Span Selection
    - Cloze (fill-in-the-blank) style
    - Information Extraction
- MCQ Tasks
    - MCTest -> 500 Passage 2k questions
    - RACE (Lai et al 2017): 28k tests,  100k questions
- Span Selection
    - SQuAD : 500 passages, 100k questions
    - TriviaQA: 95k Question, 650k evidence questions
- Cloze Questions
    - CNN/Daily Mail Dataset 
- What is Neccessary for Machine Reading
    - Attention: extract only salient parts
    - Multi-step reasoning: extract from different part of datasets
- Caveat about Datasets
    - All datasets have their biases
        - Domain Bias
        - Simplifications
        - Copyright free datasets are hard to come by
        - Weakly supervised and not properly vetted
- BaBI (Weston et al 2014)
- CNN Daily Mail Dataset Examination(Chen et al 2015)
- Adversarial Examples in Machine Reading (Jia and liang 2017)
    - Adds a sentence or word string specifically designed to distract the model
    - Drops accuracy of state of the art models from 88 to 46
- Adversarial Creation of New Datasets(Zellers et al 2018)
- Natural Questions (Kwiatkowski et al 2019)
    - Create questions naturally from search log and use crowdworkers to find corresponding evidence.
## Attention Models for Machine Reading
- A Basic Model for Document Attention: Encode the document and the question to generate an answer
    - Encoding whole documents with high accuracy is hard
    - Coverage is hard
- Attentive Reader (Hermann et al 2015)
    - Read the Query First then attend to the values in the context vector
    - Query not considered during encoding
    - Impatient Reader: Reread the document every time you get a new query token and update understanding
- Attention Sum Reader (Kadlec et al 2016)
    - Attend to each entity in the source document
    - Score of the entity is the sum of the attention scores over all mentions of the entity
- Attention over Attention (Cui et al 2017)
    - What document words match each query word?
    - Which words in the query seem important for the document
    - Document words matching to important words in the query
- Bidirectional Attention Flow (Seo et al 2017) 
    - Calculate document to context , and context to document attention
    - Both representations concatenated to word representations themselves in the document
- The following models are chossing Span
- Dynamic Span Decoder (Xiong et al 2017)
    - Iteratively define left and right boundaries 

## Multi-Step Reasoning
- Kumar et al 2016
- Multi step reasoning datasets
    - HotPotQA (yang et al 2018) : Analysis of dataset (Chen and durett 2019)
- Memory Networks (Weston et al 2014)
    - Memory bank which is a large set of vectors which can be used for later tasks
    - Pay attention over vectors to get a value and pay attention on it to create more vectors
    - Use all of them to answer
    - use 2 steps of memory accesses
- Softened and Multi layer Memory networks (sukhbatar et al 2015)
    - Use Standard softmax attention and multiple layers
    - use 3 steps of memory accesses
- When to stop reasoning
    - A fixed number of sequences
    - Attend to a stop reasoning symbol 
    - Explicit stop reasoning predictor (Shen et al 2017)
- Coarse-to-fine Question Answering (Choi et al 2017)
    - First decide which sentence to cover then reason

- Retrieval and Language Model
    - Petroni et al 2019 -> LM used to solve cloze style questions
    - Retrieve + MLM -> Guu et al 2020

- Explicit Question Decomposition for Multi Step reasoning
    - Split multihop questions into multiple questions
    - Manually done -> Wolfson et al 2020
    - By rules + reranking /learning -> min et al 2019

- Questioning Answering with Context (Choi et al 2018, Reddy et al 2018)
    - Answer questions in sequence so context from previous questions has to be used to answer next answer

## Symbolic Reasoning + Neural Nets
- Neural networks are bad at math (naik et al 2019, wallace at 2019)
- Drop dataset
- Combine Semantic parsing and Machine Reading (Gupta et al 2020)
- Differentiable Theorem Proving (Rocktaschel and Riedel 2017)class BertData():


