---
title: 'Why and when should you pool?  <br /> Analyzing Pooling in Recurrent Architectures'
date: 2020-05-01
permalink: /Pooling-Analysis/
tags:
  - max-attention
  - vanishing gradients
  - positional biases
---

<style>
.btn {
  display: inline-block;
  font-weight: $btn-font-weight;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  user-select: none;
  border: $btn-border-width solid transparent;
  @include button-size($btn-padding-y, $btn-padding-x, $font-size-base, $btn-line-height, $btn-border-radius);
  @include transition($btn-transition);

  // Share hover and focus styles
  @include hover-focus {
    text-decoration: none;
  }

  &:focus,
  &.focus {
    outline: 0;
    box-shadow: $btn-focus-box-shadow;
  }

  // Disabled comes first so active can properly restyle
  &.disabled,
  &:disabled {
    opacity: $btn-disabled-opacity;
    @include box-shadow(none);
  }

  // Opinionated: add "hand" cursor to non-disabled .btn elements
  &:not(:disabled):not(.disabled) {
    cursor: pointer;
  }

  &:not(:disabled):not(.disabled):active,
  &:not(:disabled):not(.disabled).active {
    background-image: none;
    @include box-shadow($btn-active-box-shadow);

    &:focus {
      @include box-shadow($btn-focus-box-shadow, $btn-active-box-shadow);
    }
  }
}

// Future-proof disabling of clicks on `<a>` elements
a.btn.disabled,
fieldset:disabled a.btn {
  pointer-events: none;
}


//
// Alternate buttons
//

@each $color, $value in $theme-colors {
  .btn-#{$color} {
    @include button-variant($value, $value);
  }
}

@each $color, $value in $theme-colors {
  .btn-outline-#{$color} {
    @include button-outline-variant($value);
  }
}


//
// Link buttons
//

// Make a button look and behave like a link
.btn-link {
  font-weight: $font-weight-normal;
  color: $link-color;
  background-color: transparent;

  @include hover {
    color: $link-hover-color;
    text-decoration: $link-hover-decoration;
    background-color: transparent;
    border-color: transparent;
  }

  &:focus,
  &.focus {
    text-decoration: $link-hover-decoration;
    border-color: transparent;
    box-shadow: none;
  }

  &:disabled,
  &.disabled {
    color: $btn-link-disabled-color;
    pointer-events: none;
  }

  // No need for an active state here
}


//
// Button Sizes
//

.btn-lg {
  @include button-size($btn-padding-y-lg, $btn-padding-x-lg, $font-size-lg, $btn-line-height-lg, $btn-border-radius-lg);
}

.btn-sm {
  @include button-size($btn-padding-y-sm, $btn-padding-x-sm, $font-size-sm, $btn-line-height-sm, $btn-border-radius-sm);
}


//
// Block button
//

.btn-block {
  display: block;
  width: 100%;

  // Vertically space out multiple block buttons
  + .btn-block {
    margin-top: $btn-block-spacing-y;
  }
}

// Specificity overrides
input[type="submit"],
input[type="reset"],
input[type="button"] {
  &.btn-block {
    width: 100%;
  }
}

</style>

<div> 
      <a class="btn btn-lg btn-warning" href="https://arxiv.org/abs/2005.00159" target="_blank" role="button">Paper &raquo; </a>
      <a class="btn btn-lg btn-info" href="https://github.com/dair-iitd/PoolingAnalysis" target="_blank" role="button">Code &raquo;</a>
      <!-- <a class="btn btn-lg btn-info" href="https://twitter.com/Eric_Wallace_/status/1256227702056595456" target="_blank" role="button">Twitter &raquo; </a> -->
      <br>
</div>

TL;DR:
------
1. Pooling (and attention) based BiLSTMs demonstrate improved learning ability and positional invariance.
2. Pooling helps improve sample efficiency (low-resource settings) and is particularly beneficial when important words lie towards the middle of the sentence
3. Our proposed pooling technique max-attention (MaxAtt) helps improve upon past approaches on standard accuracy metrics, and is more robust to distribution shift


## Motivation

Various pooling techniques, like mean-pooling, max-pooling, and attention*, have shown to improve the performance of RNNs on text classification tasks (Lai et al., 2015; Conneau et al., 2017; Jacovi et al., 2018; Yang et al., 2016). Despite widespread adoption, precisely how and when pooling benefits the models is largely unexamined. 

In this work, we identify two key factors that explain the performance benefits of pooling techniques: learnability, and positional invariance. We examine three commonly used pooling techniques (mean-pooling, max-pooling, and attention), and propose max-attention, a novel variant that effectively captures interactions among predictive tokens in a sentence.

* **Attention** aggregates representations via a weighted sum, thus we consider it under the umbrella of pooling in this work.

## Overview of Pooling and Attention

<p align="center">
  <img src="https://github.com/pratyush911/pratyush911.github.io/blob/master/_posts/Figures/overall_figure.png?raw=true" alt="Pooling Overview" style="width: 1000px;"/> 
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


### Authors
[Pratyush Maini](https://pratyush911.github.io), [Kolluru Sai Keshav](https://saikeshav.github.io/), [Danish Pruthi](https://www.cs.cmu.edu/~ddanish/) and [Mausam](http://www.cse.iitd.ac.in/~mausam/)