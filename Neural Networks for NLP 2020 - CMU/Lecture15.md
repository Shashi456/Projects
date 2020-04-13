# Risk, Minimum Risk Training and Reinforcement Learning
- MLE   
    - Predicting next word(action) given previous words (actions)
    - Maximize the likelihood of the prediction
    - (also called teacher forcing)
    - Problems
        - Exposure Bias 
        - Disregard to Evaluation Metrics (We want good outputs)
            - Some predictions are worse than others. 
- Error: Generate an output, calculate its badness, we would like to minimize this error
    - The argmax function makes discrete zero-decisions, therefore it's non-differentiable. 
- Risk: It is the expectation of the error. 
    - This include the probability in the objective function
    - Differentiable but the sum is intractable.
    - Minimum risk training, minimizes risk  (MRT Shen et al 2015)
        - Sample samples and calculate risk over that.
        - Samples using random sampling or n-best search
    - Strong connection between risk and the error function being a zero-one loss.
    - Temperature helps adjust for the small sample.
## Reinforcement learning
- Learning where we have
    - Environment X
    - Ability to make actions A
    - Observed reward R
- Use in NLP, where in you generate text and get a reward at the end.
    - Dialog (like reaching the end of the dialoh)
- Use in NLP, Where we have latent variable, where we decide on a latent variable and decide wrt the configuration
- Use in NLP, Sequence Level error function (BLEU, ROUGE, METEOR)
- In the context of reinforcement learning, MLE is akin to imitation learning, DAgger is also imitation learning.
- Self Training: Sample a output acc to current model and use this sample to maximize likelihood
    - Not good because if the output is bad it might make this more probable 
    - Co-training (blum et al), Only choose sentences/outputs where in multiple models agree.
    - He et al 2020, Noising the input
- Policy Gradient/ REINFORCE
    - Outputs that get a bigger reward will get a higher weight
- Credit Assignment to rewards
    - How do we know which action led to this reward? (big question in RL)
        - Best scenario, immediate reward
        - Worst scenario, only at end of roll out.
    - Often assign decaying rewards for future events

### Stabilizing RL for NLP
- Reinforcement learning is unstable, particularly unstable when using bigger output spaces.
- Method 1: Adding a Baseline
    - Calculating baselines
        - Predict final reward using linear regressor from current state (ranzato 2016)
        - Use of the mean of the rewards in the batch(Dayan 1990)
        - SCST?
    - Be careful to not backprop through the baseline
- Method 2: Increasing Batch Size
    - Because each sample will be high variance 
    - We can increase the number of examples done (rollouts)
    - Experience replay, save previous roll outs and re use them to update parameters
    (lin 1993)
- Warm Start
    - Start training with MLE, then switch to REINFORCE
    - MIXER (Ranzato et al 2016)

### Value Based RL
- Guess the value of taking a particular action, and maximize the action with maximum value
- Action-Value function, given a state s, estimate the value of each action
- Estimating Value Function
    - Tabular Q learning
    - Neural Q function Approximation (Tesauro 1995) (Backgammon game)
- Exploration vs Exploitation
- Intrinsic reward (Bellemare et al 2016)

## Examples
- Young et al 2013
- William and Zweig 2017 (neural network models, task based)
- Schaztmann et al 2007
- Mapping Instructions to actions
    - Branavan et al 2009
- Grissom et al 2014, Gu et al 2017 -> Translate before end of sentences
- RL for QA choi et al




