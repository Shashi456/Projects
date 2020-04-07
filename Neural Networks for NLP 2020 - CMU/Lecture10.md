# Debugging Neural Networks for NLP
- Debugging is important because you have to see if the model is learning properly.
    - Models also get complicated
    - everything is a parameter
    - Non-convex, stochastic optimization
- Typical Situation: Nice model, ok code but the accuracy on test set is bad. 
    - Training Time problems
        - Lack of model capacity
        - Inability to train model properly
        - training time bug(Like preprocessed data not rightly formatted)
    - Decoding Time bugs
        - Disconnect between test and decoding
        - Failure of search algorithm
    - Overfitting
    - Mismatch in loss and eval
    - Decoding problems can be realized by looking at outputs and checking ground truth outputs.


## Training Time problems
- Look at loss function calculated on the training set
    - Is loss going down?
    - Is it going down to zero if you run training long enough
    - What happens on small dataset
- Model too weak
    - Size depends on task (like LM has 512 nodes)
    - Multiple layers often better
    - Long sequences need larger layers
- Multi-layers often suffer from vanishing gradients, some solutions include residual connections(He et al 2015), Highway networks(Srivastava et al 2015)
- If greater model size doesnt help, it is an optimization problem 
    - Learning rate: Too low will not learn/ learn slowly, too high will learn for a while then fluctuate
        - Initial learning rate then gradually decreasing helps
        - Can probably also have learning rate schedules.
        - Keep in mind learning rate defaults.
    - Initialization
        - Glorot or He initialization
    - MiniBatching -> 
        - Sort sentences so similarly lengthed sentences are in the same batch (Morishita et al 2017)

## Test Time Problems
- Training function/ prediction in different functions
- Training is minibatched but prediction isnt
- Debug Minbatch
    - Calculate loss with large batch size
    - calculate loss for examples individually and sum them 
    - the values should be same
- Write unit tests for a variety of things, debugging minibatch, structured generation etc to ensure that the loss function for testing and training are same
- Beam Search can have problems
    - As you make search better, the model score should get better.




## Other problems
- Overfitting: When the model's loss on training is low but is high on testing.
    - Neural net can memorize training data (Zhang et al 2017)
    - Optimizers: Adaptive Gradient methods tend to overfit more (wilson et al 2017)
- Early Stopping, Learning Rate Decay, Dropout
- Maximum Likelihood training favours short sentences
- Koehn and knowles 2017, better model score worse bleu scores.