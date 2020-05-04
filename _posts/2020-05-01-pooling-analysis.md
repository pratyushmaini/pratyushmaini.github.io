---
title: 'Pooling Analysis'
date: 2020-05-01
permalink: /Pooling-Analysis/
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
<p align="center">
  <img src="https://github.com/pratyush911/pratyush911.github.io/blob/master/_posts/Figures/overall_figure.png?raw=true" alt="Photo" style="width: 450px;"/> 
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
<img src="https://github.com/pratyush911/pratyush911.github.io/blob/master/_posts/Figures/NWI/NWI_Explain.png?raw=true" alt="NWI Explanation" width="200"/>
<img src="https://github.com/pratyush911/pratyush911.github.io/blob/master/_posts/Figures/NWI/NWI_Algo.png?raw=true" alt="NWI Algo" width="200"/>
<img src="https://github.com/pratyush911/pratyush911.github.io/blob/master/_posts/Figures/NWI/YAHOO_SHORT_25K_mid.png?raw=true" alt="NWI Explanation" width="200"/>
