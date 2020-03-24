# Lecture 4 -  Recurrent Neural networks
- We use RNNs for NLP because of the existence of sequential data, eg words in sentences, characters in words, sentences in discourse and to model long distance dependencies in language.
(sidenote: check winograd and winogrande schema challenge.)
- Paper: RNN - Elman 1990 : Rnn's are "unrolled in time", i.e it goes over the sequence in each time step. it is the same function that is being applied. The loss is just the sum of all the predicted losses at each time step.  
- RNN training can be thought of as a DAG when unrolled and can do normal backprop beyond that. Parameters are tied across all time steps, i.e as previously mentioned same parameters are used in all time steps. 
## Applications of RNNs
- Representing sentences, Conditioned generation and retrieval. 
- For retrieval, you have a document set and a query set and you make both of their representations as close as possible. 
- Can also be used for LM, tagging.   
- Bi-RNNs, combine the left context and the right context, run the RNN in both directions basically. Can't be done for LM because if you also knew your right word, it would make your task easy. 
- Vanishing Gradients: Gradients decrease as they get pushed back. The gradient gets squashed by non-linearities of small weights in matrices. 
- Exploding Gradients: Similar to vanishing, but gradients increase. But they can be instead handled with clipping. 
## LSTM 
- Make additive connections between time steps. this does not modify the gradient. 
- There are 4 gates, update, input, output and (forget? - Not proposed in the original paper).
- What do LSTMs learn - Visualizing LSTMs (Karpathy et al 2015.)
- Interpreting LSTMs as residual networks.
## Efficiency tricks of RNNs
- Handling Mini-batching.   
- Bucketing/Sorting: Sort sentences, so similar length sentences are in the same batch. 
- Optimized Implementations of LSTMs (Appleyard 2015)
## GRUs - Cho et al 2014.
- Simpler version that preserves the additive connections, only has one hidden state.
## Multi-scale/Pyramid RNNs
- RNNs with different scales/strides.
- Read about Truncated BPTT.