# Machine Learning Digit Recognition Project

## Introduction
This project explores digit recognition using neural networks, based on a dataset of 500 digits drawn by us.

## Dataset Analysis
The dataset is balanced with an equal quantity of all digits, drawn by two individuals. The main variations among the same digits are size and precision of curved lines.

## Architecture and Implementation
We implemented three different architectures:
- Single-layer Neural Network
- Two-layer Neural Network
- Filter + Neural Network

Different activation functions, training methods, and performance measures were tested using MATLAB's Deep Learning Toolbox.

## Filters Applied
Two filters were applied to enhance digit recognition:
- Pseudo-inverse method
- Binary perceptron

The pseudo-inverse method was less effective, while the binary perceptron transformed digits into a version of PerfectArial.

## Results Evaluation
We used accuracy (obtained via softmax post-processing) and MSRE (Mean Squared Residual Error) as metrics. The sigmoid activation function performed best across all architectures.

## Learnings
Key learnings from this project include:
1. Classifier design and selection criteria.
2. Impact of epochs on network performance.
3. Training vs. validation set balance to avoid overfitting.
4. Benefits of using filters before classification.
5. Network complexity and overfitting issues.
6. Optimal train-validation ratio.

## Conclusion
This project was our first interaction with Neural Networks and MATLAB's Deep Learning Toolbox. We successfully built classifiers capable of recognizing numbers with satisfactory performance.
