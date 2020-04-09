# Search Based Structure Prediction
- Globally normalized models each sentence has a score which is not normalized over a particular decision.
- Difficulties for globally normalized models, is the partition function computation. Earlier done with structure models, now with sampling.
- Sampling 
    - Sample k samples according to Probability distribution
    - It's an unbiased estimator but has a high variance. 
- Beam Search
    - This approach will search for k best hypothesis
    - This is a biased estimator with lower variance.
## Un-normalized Models
- Normalized models are where in the output distribution is a clean probability distribution, but since we only need "best hypothesis" at inference time, normalization is not important at that stage.
- Neural Networks tend to be good predictive models but very poorly calibrated.
    - Calibration is when you predict something and it actually happens.
    - In Neural network models, sometimes they tend to predict something and are wrong but seem to be very confident. 
- Structured Perceptron Algorithm 
    - Find the one best output and if its score is better than the correct answer adjust parameters to fix this.
    - To implement this, you can do it as a loss function.
- Global Structured Perceptron
- Training is difficult. 

## Hinge Loss and Cost Sensitive Training
- Penalize when incorrect answer is within margin M
- Hinge loss can be used anywhere where a softmax is used.
- When would you want a hinge loss?
    - Lets say in a binary classification problem, when there is no guarantee that there is a balanced classification line, and there is a poorly calibrated classifier.
- Cost-Augmented Hinge
    - Sometimes some decisions are worse than others
    - To penalize incorrect decisions
    - Costs over sequences 
        - Zero-one loss: If sentences are different 1, 0 otherwise.
        - Hamming Loss: 1 for every different element
        - Edit distance, 1 - BLEU etc.
- Structured Hinge loss 
    - Hinge loss over sequence with largest margin violation.
    - i.e Things that have a high score but are really bad (incorrect)
    - Cost-Augmented Decoding for Hamming Loss

## Simpler Remedies to Exposure Bias
- DAgger (Ross et al 2010): Sample Mistakes in Training (Scheduled Sampling)
    - Start with no mistakes, then gradually introduce them using annealing
    - Not good with Text generation
    - Good to use when there is only one correct answer
    - Dynamic Oracle (goldberg and Nivre 2013)
- Dropout Inputs (Fal and Ghahramani 2015)
    - Simply dont input the previous decision sometimes during training
    - Amount of dropout is a hyperparameter, difficult to adjust i.e find correct value.
- Corrupt Training Data
    - Reward augmented maximum likelihood- RAML (Nourozi et al  2016)
        - Randomly sample incorrect training data, train w/ MLE
        - Sampling probability proportional to goodness of output.

