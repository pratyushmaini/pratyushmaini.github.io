---
permalink: /blog/
title: "Blog"
---

{% include base_path %}

## [Phi-1.5 Model: A Case of Comparing Apples to Oranges?](https://pratyushmaini.github.io/phi-1_5/)

- Researchers from Microsoft recently released a paper "Textbooks are all you Need II" creating a new 1.3 billion parameter model named Phi-1.5 with performance on natural language tasks comparable to models 5x larger.
- I explore the paper's claims and find that the model performs significantly worse than equal-sized counterparts when evaluated on perplexity. My investigation highlights how comparisons in the paper, while impressive, paint an incomplete picture (comparing apples to oranges).
- In order to evaluate beyond perplexity, yet circumvent inadvertent gaming of benchmarks, I also created a new task of "slang" understanding and found that a model of similar size performs 40% better than the Phi-1.5 model.

## [T-MARS: Improving Visual Representations by Circumventing Text Feature Learning](https://tmars-clip.github.io/)
- We make an interesting observation: a large fraction of image-caption web datasets (such as LAION) have images that contain text inside them. Often, the text is the only feature correlated with the caption.
- We propose an algorithm to filter web datasets used for training CLIP in order to learn better visual representations, and achieve state-of-art zeroshot accuracy on vision tasks.

## [Can Neural Network Memorization Be Localized?](https://pratyushmaini.github.io/mem_web)
- We show that memorization is typically not localized to specific model layers, rather is confined to a small fraction of neurons dispersed across the model.
- We propose Example-Tied Dropout that can confine memorization to a pre-defined set of neurons, which can then be thrown away at test time.


## [Why and when should you pool?  <br /> Analyzing Pooling in Recurrent Architectures](https://pratyushmaini.github.io/Pooling-Analysis/)

- We show why and how Pooling (and attention) based BiLSTMs demonstrate improved learning ability and positional invariance over standard BiLSTMs.
- Further, we find that Pooling helps improve sample efficiency (low-resource settings) and is particularly beneficial when important words lie towards the middle of the sentence
- Our proposed pooling technique max-attention (MaxAtt) helps improve upon past approaches on standard accuracy metrics, and is more robust to distribution shift
- Analyses done on multiple Text Classification tasks. 


