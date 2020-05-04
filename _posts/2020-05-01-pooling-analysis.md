---
title: 'Why and when should you pool?  <br /> Analyzing Pooling in Recurrent Architectures'
date: 2020-05-01
permalink: /Pooling-Analysis
tags:
  - max-attention
  - vanishing gradients
  - positional biases
---

TL;DR:
------
1. Pooling (and attention) based BiLSTMs demonstrate improved learning ability and positional invariance.
2. Pooling helps improve sample efficiency (low-resource settings) and is particularly beneficial when important words lie towards the middle of the sentence
3. Our proposed pooling technique max-attention (MaxAtt) helps improve upon past approaches on standard accuracy metrics, and is more robust to distribution shift


## Motivation
Pooling mechanisms are ubiquitous components in Recurrent Neural Networks (RNNs) applied to natural language tasks. Pooling operations consolidate hidden representations from RNNs into a single representation. Various pooling techniques, like mean-pooling, max-pooling, and attention2, have shown to improve the performance of RNNs on text classification tasks (Lai et al., 2015; Conneau et al., 2017; Jacovi et al., 2018; Yang et al., 2016).

Despite widespread adoption, precisely how and when pooling benefits the models is largely unexamined. In this work, we perform an in-depth analysis comparing popular pooling methods, and our proposed max-attention, with standard BiLSTMs for several text classification tasks using novel experimental setups.

In this work, we identify two key factors that explain the performance benefits of pooling techniques: learnability, and positional invariance. We examine three commonly used pooling techniques (mean-pooling, max-pooling, and attention), and propose max-attention, a novel variant that effectively captures interactions among predictive tokens in a sentence.

## Overview of Pooling and Attention

<p align="center">
  <img src="Figures/overall_figure.png?raw=true" alt="Pooling Overview" style="width: 400px;"/> 
</p>


## Gradient Propagation

## Positional Biases
Goals:
### Evaluating Natural Positional Biases
<i> ~~ Can naturally trained recurrent models skip over unimportant words in the begining or the end of the sentence? ~~  </i>
### Training to Skip Unimportant Words
<i> ~~ How well can different models be trained to skip unrelated words? ~~  </i>
### Fine-grained Positional Biases
<i> ~~ How does the position of a word impact its importance in the final prediction by a model? ~~  </i>

#### The NWI Metric
<img src="Figures/NWI/NWI_Explain.png?raw=true" alt="NWI Explanation" width="200"/>
<img src="Figures/NWI/NWI_Algo.png?raw=true" alt="NWI Algo" width="200"/>
<img src="Figures/NWI/YAHOO_SHORT_25K_mid.png?raw=true" alt="NWI Explanation" width="200"/>


### Authors
