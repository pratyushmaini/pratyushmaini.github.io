---
title: 'Pooling Analysis'
date: 2020-05-01
permalink: /posts/Pooling-Analysis/Pooling-Analysis
tags:
  - max-attention
  - vanishing gradients
  - positional biases
---

Why and when should you pool?  <br /> Analyzing Pooling in Recurrent Architectures  
======

TL;DR:
------
1. Pooling-based BiLSTMs demonstrate improved learning ability and positional invariance
2. Pooling helps improve sample efficiency (low-resource settings) and is particularly beneficial when important words lie towards the middle of the sentence
3. Our proposed pooling technique max-attention (MaxAtt) helps improve upon past approaches on standard accuracy metrics, and is more robust to distribution shift


## Motivation

## Overview
![Summary of Pooling Methods][summary_pooling]





[summary_pooling]: https://github.com/pratyush911/pratyush911.github.io/blob/master/_posts/Pooling-Analysis/Figures/overall_figure.png
## Gradient Propagation

## Positional Biases
Goals:
### Evaluating Natural Positional Biases
<p style="text-align: center;"><i> ~~ Can naturally trained recurrent models skip over unimportant words in the begining or the end of the sentence? ~~  </i></p>
### Training to Skip Unimportant Words
<p style="text-align: center;"><i> ~~ How well can different models be trained to skip unrelated words? ~~  </i></p>  
### Fine-grained Positional Biases
<p style="text-align: center;"><i> ~~ How does the position of a word impact its importance in the final prediction by a model? ~~  </i></p>  

#### The NWI Metric
<img src="Figures/NWI/NWI_Explain.png" alt="NWI Explanation" width="200"/>
<img src="Figures/NWI/NWI_Algo.png" alt="NWI Algo" width="200"/>
<img src="Figures/NWI/YAHOO_SHORT_25K_mid.png" alt="NWI Explanation" width="200"/>