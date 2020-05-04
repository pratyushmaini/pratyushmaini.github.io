---
title: 'Why and when should you pool?  <br /> Analyzing Pooling in Recurrent Architectures'
date: 2020-05-01
permalink: /Pooling-Analysis/
tags:
  - max-attention
  - vanishing gradients
  - positional biases
---


<div> 
      <a class="btn btn-lg btn-warning" href="https://arxiv.org/abs/2005.00159" target="_blank" role="button">Paper &raquo; </a>
      <a class="btn btn-lg btn-secondary" href="https://github.com/dair-iitd/PoolingAnalysis" target="_blank" role="button">Code &raquo;</a>
      <br>
</div>

## Authors

<style>
.authorbox {
    /* height: 128px; */
    /* padding: 100px; */
}
.authorbox > div {
    text-align: center;
    /* width: 128px; */
    display: inline-block;
}
.authorbox p {
    margin: 0;
}
.authorbox a{
    color: #4EA3E1;
}
.authorbox img{
    border-radius: 4px;
}
</style>

<center>
<div class="authorbox">
  <div id="authors-1">
    <a href="https://pratyush911.github.io">
    <img src="https://pratyush911.github.io/images/Profile.jpg" alt="Pratyush" style="height: 100px;" />
    <p>Pratyush Maini</p> 
    </a>
    <p style="margin-left: 2.5em;padding: 0 7em 2em 0"></p>
  </div>
  <div id="authors-2">
    <a href="https://saikeshav.github.io/">
    <img src="https://saikeshav.github.io/images/pp.jpeg" alt="Keshav" style="height: 100px;" />
    <p>Kolluru Sai Keshav</p> </a>
    <p style="margin-left: 2.5em;padding: 0 7em 2em 0"></p>
  </div>
  <div id="authors-3">
    <a href="https://www.cs.cmu.edu/~ddanish/">
    <img src="https://pbs.twimg.com/profile_images/1149339477250379776/73row7EO_400x400.png" alt="Danish" style="height: 100px;" />
    <p>Danish Pruthi</p> </a>
    <p style="margin-left: 2.5em;padding: 0 7em 2em 0"></p>
  </div>
  <div id="authors-4">
    <a href="http://www.cse.iitd.ac.in/~mausam/">
    <img src="http://www.cse.iitd.ac.in/~mausam/mausam-head.jpg" alt="Mausam" style="height: 100px;" />
    <p>Mausam</p> </a> 
    <p style="margin-left: 2.5em;padding: 0 7em 2em 0"></p>
  </div>
</div>
</center>

## TL;DR:

1. Pooling (and attention) based BiLSTMs demonstrate improved learning ability and positional invariance.
2. Pooling helps improve sample efficiency (low-resource settings) and is particularly beneficial when important words lie towards the middle of the sentence
3. Our proposed pooling technique max-attention (MaxAtt) helps improve upon past approaches on standard accuracy metrics, and is more robust to distribution shift


## Motivation

Various pooling techniques, like mean-pooling, max-pooling, and attention<b>*</b>, have shown to improve the performance of RNNs on text classification tasks (Lai et al., 2015; Conneau et al., 2017; Jacovi et al., 2018; Yang et al., 2016). Despite widespread adoption, precisely <i><b>why</b></i> and <i><b>when</b></i>  pooling benefits the models is largely unexamined. 

In this work, we identify two key factors that explain the performance benefits of pooling techniques: learnability, and positional invariance. We examine three commonly used pooling techniques (mean-pooling, max-pooling, and attention), and propose max-attention, a novel variant that effectively captures interactions among predictive tokens in a sentence.

<b>* Attention</b> aggregates representations via a weighted sum, thus we consider it under the umbrella of pooling in this work.

## Overview of Pooling and Attention

<p align="center">
  <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/overall_figure.png" alt="Pooling Overview" style="width: 1000px;"/> 
</p>


## Gradient Propagation

In order to quantify the extent to which the gradients vanish across different word positions, we compute the gradient of the loss function w.r.t the hidden state at every word position <img src="https://tex.s2cms.ru/svg/t" alt="t" />, and study their norm. This is represented by the <img src="https://tex.s2cms.ru/svg/%5Cell_2" alt="\ell_2" /> norm <img src="https://tex.s2cms.ru/svg/%7C%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20h_%7Bt%7D%7D%7C" alt="|\frac{\partial L}{\partial h_{t}}|" />. 

**Vanishing Ratio**: Given by <img src="https://tex.s2cms.ru/svg/%7C%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20h_%7B%5Ctext%7Bend%7D%7D%7D%7C%2F%7C%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20h_%7B%5Ctext%7Bmid%7D%7D%7D%7C" alt="|\frac{\partial L}{\partial h_{\text{end}}}|/|\frac{\partial L}{\partial h_{\text{mid}}}|" />. It is a measure to quantify the extent of vanishing gradient. Higher values indicate severe vanishing as the gradients reaching the middle are lower than the gradients at the end.

<p align="center">
  <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Gradients/vanishing_legend.png" alt="Legend" style="width: 400px;"/> <br>
  <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Gradients/vanishing.png" alt="Vanishing with time steps" style="width: 400px;"/> 
</p>


The gradient norm <img src="https://tex.s2cms.ru/svg/(%7C%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20h_%7Bt%7D%7D%7C)" alt="(|\frac{\partial L}{\partial h_{t}}|)" /> across different word positions. BiLSTM<img src="https://tex.s2cms.ru/svg/%5Ctextsubscript%7BLowF%7D" alt="\textsubscript{LowF}" /> suffers from extreme vanishing gradient, with the gradient norm in the middle nearly <img src="https://tex.s2cms.ru/svg/10%5E%7B-10%7D" alt="10^{-10}" /> times that at the ends. 

The plot suggests that specific initialization of the gates with best practices (such as setting the bias of forget-gate to a high value) helps to reduce the extent of the issue, but the problem still persists. In contrast, none of the pooling techniques face this issue, resulting in an almost straight line. 

<p align="center">
  <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Gradients/ratio_legend.png" alt="Legend" style="width: 700px;"/>  <br><br>
  <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Gradients/last1_ratios.png" alt="Vanishing Ratios last1" style="width: 350px;"/> 
 <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Gradients/att_max_ratios.png" alt="Vanishing Ratios att_max" style="width: 350px;"/> 
</p>


The vanishing ratio <img src="https://tex.s2cms.ru/svg/(%7C%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20h_%7B%5Ctext%7Bend%7D%7D%7D%7C%2F%7C%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20h_%7B%5Ctext%7Bmid%7D%7D%7D%7C)" alt="(|\frac{\partial L}{\partial h_{\text{end}}}|/|\frac{\partial L}{\partial h_{\text{mid}}}|)" /> over training steps for BiLSTM and MaxAtt, using 1K, 20K unique training examples from the IMDB dataset. The respective training and validation accuracies are also depicted.

Consequently, the BiLSTM model overfits on the training data, even before the gates can learn to allow the gradients to pass through (and mitigate the vanishing gradients problem). Thus, the model prematurely memorizes the training data solely based on the starting and ending few words.

<p align="center">
  <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Gradients/TableVanish.png" alt="Table" style="width: 400px;"/> 
</p>

The vanishing ratio is high for BiLSTM, especially in low-data settings. This results in a 12-14\% lower test accuracy compared to other pooling techniques, in the 1K setting. We conclude that the phenomenon of vanishing gradients results in weaker performance of BiLSTM, especially in low training data regimes.

## Positional Biases

Goals:

### Evaluating Natural Positional Biases

<i> ~ Can naturally trained recurrent models skip over unimportant words in the begining or the end of the sentence? ~  </i>

<p align="center">
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Wiki_Attack/legend.png" alt="Legend" width="700"/><br>
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Wiki_Attack/IMDB_LONG_5K_left.png" alt="Wiki Attack Left" width="250"/>
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Wiki_Attack/IMDB_LONG_5K_mid.png" alt="Wiki Attack Mid" width="250"/>
</p>



<p align="center">
<img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Wiki_Diagram.png" alt="Explain Wiki Setting" width="400"/>
</p>

### Training to Skip Unimportant Words

<i> ~ How well can different models be trained to skip unrelated words? ~  </i>

<p align="center">
<img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/IMDB_Wiki.png" alt="IMDB Wiki Table" width="1000"/>
</p>

### Fine-grained Positional Biases

<i> ~ How does the position of a word impact its importance in the final prediction by a model? ~  </i>

#### The NWI Metric

<p align="center">
<img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/NWI/NWI_Explain.png" alt="NWI Explanation" width="400"/>
</p>

<br><br>



<style>
.iconbox {
    /* height: 128px; */
    /* padding: 20px; */
}
.iconbox > div {
    text-align: center;
    /* width: 128px; */
    display: inline-block;
}
.iconbox p {
    margin: 0;
}
</style>

<p align="center">
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/Wiki_Attack/legend.png" alt="Legend" width="700"/>
</p>
<center>
<div class="iconbox">
  <div id="nwi-1">
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/NWI/YAHOO_LONG_25K_none.png" alt="Yahoo None" style="height: 150px;" />
    <p>Standard</p> 
  </div>
  <div id="nwi-2">
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/NWI/YAHOO_LONG_25K_left.png" alt="Yahoo Left" style="height: 150px;" />
    <p>Left</p>
  </div>
  <div id="nwi-3">
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/NWI/YAHOO_LONG_25K_mid.png" alt="Yahoo Mid" style="height: 150px;" />
    <p>Mid</p>
  </div>
  <div id="nwi-4">
    <img src="https://pratyush911.github.io/files/PoolingAnalysisFigures/NWI/YAHOO_SHORT_25K_mid_main.png" alt="Yahoo Mid Short" style="height: 150px;" />
    <p>Short + Mid </p>
  </div>
</div>
</center>

## Conclusion

Through detailed analysis we identify <i><b>why</b></i> and <i><b>when</b></i> pooling representationsare beneficial in RNNs. We attribute the performance benefits of pooling techniques to their <b>learning ability</b> (pooling mitigates the problem of vanishing gradients), and <b>positional invariance</b> (pooling eliminates positional biases).

Our findings suggest that pooling offers large gains when the <b>training examples are few and long</b>, and <b>salient words lie towards the middle of the sequence</b>. 

Lastly, we introduce a novel pooling technique called <b>max-attention (MaxAtt)</b>, which consistently outperforms other pooling variants, and is robust to addition of unimportant tokens in the text. Most of our insights are derived for sequence classification tasks using RNNs. While the analysis techniques and the pooling variant proposed in the work are general, it remains a part of the future work to evaluate their impact on other tasks and architectures.

### How do I cite this work?

If you find this work useful, please cite [the Arxiv paper](https://arxiv.org/abs/2005.00159):

```
@misc{maini2020pool,
    title={Why and when should you pool? Analyzing Pooling in Recurrent Architectures},
    author={Pratyush Maini and Keshav Kolluru and Danish Pruthi and Mausam},
    year={2020},
    eprint={2005.00159},
    archivePrefix={arXiv},
    primaryClass={cs.CL}
}
```