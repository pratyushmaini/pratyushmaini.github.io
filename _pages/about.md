---
permalink: /
title: ""
excerpt: "About me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<script>
      function dropdown(divID) {
          var item = document.getElementById(divID);
          if (item) {
              item.className=(item.className=='hidden')?'unhidden':'hidden';
          }
      }
</script>
  
<p style="text-align: center;"><i> ~~ I like to Observe. Look for Patterns. Ponder over these Generalizations. Try to Refute them. <br> &nbsp;&nbsp; Or otherwise prove their Validity. And re-image their Applications in alternate spheres ~~  </i></p>

Pratyush Maini
======
I am a PhD student in the Machine Learning Department at Carnegie Mellon Univeristy, and a founding member of [DatologyAI](http://www.datologyai.com). I am advised by [Prof. Zico Kolter](http://zicokolter.com/) and [Prof. Zachary Lipton](https://acmilab.org). My research goal is to make Machine Learning systems trustworthy to the extent that they can be safely and reliably deployed outside the comfort of our research labs.

<a href="javascript:dropdown('previously');">Previously,</a>
<div id="previously" class="hidden"><br>
Previously, I spent a wonderful year working in the AI Solutions Lab at Samsung Research and Development Headquarters in South Korea. Before which I completed my bachelor's in Computer Science and Engineering from IIT Delhi.  

During my undergraduate years, I was fortunate to have had the opportunity to adapt and learn from the research styles of my amazing collaborators. I was advised by [Prof. Mausam](http://www.cse.iitd.ernet.in/~mausam/){:target="_blank"} for my B.Tech. thesis, and worked with [Prof. Zico Kolter](https://www.zicokolter.com){:target="_blank"}, [Eric Wong](https://www.cs.cmu.edu/~ericwong/){:target="_blank"}, [Danish](https://www.cs.cmu.edu/~ddanish/){:target="_blank"} at CMU, [Prof. Bo Li](https://aisecure.github.io){:target="_blank"}, [Prof. Dawn Song](https://people.eecs.berkeley.edu/~dawnsong/){:target="_blank"}, [Xinyun Chen](https://jungyhuk.github.io/){:target="_blank"} at UIUC/UC Berkeley, [Prof. Nicolas Papernot](https://www.papernot.fr){:target="_blank"} at UofT/Vector and [Prof. James Larus](https://people.epfl.ch/james.larus){:target="_blank"} at EPFL during research internships.
</div>

**Collaborate?** I am always excited to exchange research perspectives and hop on to new research endeavors. If you are interested, reach out via email! 

**Bio:** If you need a bio for a talk, please use this:
>Pratyush is a PhD student in the Machine Learning Department at Carnegie Mellon University, and a founding member of DatologyAI. In his work, he has developed scalable and performant methods for improving the quality of data that we train machine learning models on. He has also developed methods that allow us to evaluate, locate, and mitigate the memorization of data points by neural network. His works have been recognized through a best paper award nomination at NeurIPS, and multiple oral and spotlight talks at important ML conferences.


Talks  
-----
- April 2024: TOFU @ [Responsible AI Reading Group at AWS](https://www.amazon.science/tag/responsible-ai)
- April 2024: Rephrasing The Web @ [Together AI Research Group](https://www.together.ai/research)
- March 2024: Rephrasing The Web @ [Sambanova Research Group](https://sambanova.ai/blog/accurate-models-at-blazing-speed)
- February 2024: Can Neural Network Memorization be Localized @ [ML PDG Karlsruhe](http://ml-ka.slack.com/)
- November 2023: Can Neural Network Memorization be Localized @ [Ellis Reading Group on Mathematics of Deep Learning](https://ellis-rg-math-dl.github.io/)
- October 2023: T-MARS @ [ICCV 2023, Datacomp Workshop](https://www.datacomp.ai/workshop.html)
- September 2023: T-MARS @ [Ludwig Schmidt's lab](https://people.csail.mit.edu/ludwigs/)
- June 2022: Characterizing Datapoints via Second-split Forgetting @ SCIS ICML 2022



Publications
-----
(11) [Rephrasing the Web: A Recipe for Compute & Data-Efficient Language Modeling](https://huggingface.co/papers/2401.16380){:target="_blank"}   
*Pratyush Maini, Skyler Seto, He Bai, David Grangier, Yizhe Zhang, Navdeep Jaitly*   
<a href="javascript:dropdown('rephrase-tldr');">TLDR</a> | [Paper](https://arxiv.org/abs/2401.16380){:target="_blank"} | <a href="javascript:dropdown('rephrase-cite');">Citation</a>     
<div id="rephrase-tldr" class="hidden"><b>TLDR:</b> You can train 3x faster and with upto 10x lesser data with just synthetic rephrases of the web!<br><br>
</div>

<div id="rephrase-cite" class="hidden">
<pre>@inproceedings{maini2024rephrasing,
  title={Rephrasing the Web: A Recipe for Compute & Data-Efficient Language Modeling},
  author={Maini, Pratyush and Seto, Skyler and Bai, He and Grangier, David and Zhang, Yizhe and Jaitly, Navdeep},
  booktitle={arXiv},
  year={2024}
}</pre></div>   

(10) [TOFU: A Task of Fictitious Unlearning for LLMs](https://locuslab.github.io/tofu/){:target="_blank"}   
*Pratyush Maini, Zhili Feng, Avi Schwarzschild, Zachary C. Lipton, J. Zico Kolter*   
<a href="javascript:dropdown('tofu-drop-tldr');">TLDR</a> | [Paper](https://arxiv.org/abs/2401.06121){:target="_blank"} | [Website](https://locuslab.github.io/tofu/){:target="_blank"}  | <a href="javascript:dropdown('tofu-drop');">Citation</a>     
<div id="tofu-drop-tldr" class="hidden"><b>TLDR:</b> Synthetic data benchmark for machine unlearning for LLMs
<br><br> </div>

<div id="tofu-drop" class="hidden">
<pre>@misc{tofu2024,
      title={TOFU: A Task of Fictitious Unlearning for LLMs}, 
      author={Pratyush Maini and Zhili Feng and Avi Schwarzschild and Zachary C. Lipton and J. Zico Kolter},
      year={2024},
      archivePrefix={arXiv},
      primaryClass={cs.LG}
}</pre></div>   

(9) [Can Neural Network Memorization be Localized?](https://pratyushmaini.github.io/mem_web/){:target="_blank"}   
*Pratyush Maini, Michael Curtis Mozer, Hanie Sedghi, Zachary Chase Lipton, J Zico Kolter, Chiyuan Zhang*   
International Conference on Machine Learning (**ICML**) 2023 ![](https://img.shields.io/badge/-conference-brightgreen)   
<a href="javascript:dropdown('mem-drop-tldr');">TLDR</a> | [Paper](https://arxiv.org/abs/2307.09542){:target="_blank"} | [Website](https://pratyushmaini.github.io/mem_web/){:target="_blank"} | [Slides](files/mem_drop/mem_drop_Slides.pdf){:target="_blank"} | [Poster](files/mem_drop/mem_drop_poster.pdf){:target="_blank"} | <a href="javascript:dropdown('mem-drop');">Citation</a>     
<div id="mem-drop-tldr" class="hidden"><b>TLDR:</b><ol>
		<li>We show that memorization is typically not localized to specific model layers, rather is confined to a small fraction of neurons dispersed across the model.</li>
		<li>We propose Example-Tied Dropout that can confine memorization to a pre-defined set of neurons, which can then be thrown away at test time.
</li>
	</ol>
<br><br> </div>

<div id="mem-drop" class="hidden">
<pre>@inproceedings{maini2023memorization,
  title={Can Neural Network Memorization Be Localized?},
  author={Maini, Pratyush and Mozer, Michael C and Sedghi, Hanie and Lipton, Zachary C and Kolter, J Zico and Zhang, Chiyuan},
  booktitle={International Conference on Machine Learning},
  year={2023}
}</pre></div>   

(8) [T-MARS: Improving Visual Representations by Circumventing Text Feature Learning](https://arxiv.org/abs/2307.03132){:target="_blank"}   
*Pratyush Maini\*, Sachin Goyal\*, Zachary C. Lipton, Zico Kolter, Aditi Raghunathan*   
ICLR 2024 ![](https://img.shields.io/badge/-conference-brightgreen)     
DMLR @ International Conference on Machine Learning (**ICML**) 2023 ![](https://img.shields.io/badge/-workshop-blue)  
Datacomp Workshop @ **ICCV** 2023 ![](https://img.shields.io/badge/-workshop-blue)  ![](https://img.shields.io/badge/-contributed_oral-red)   
<a href="javascript:dropdown('tmars-tldr');">TLDR</a> | [Paper](https://arxiv.org/abs/2307.03132){:target="_blank"} | [Website](https://tmars-clip.github.io/){:target="_blank"} | [Poster](files/t-mars/t-mars_Poster.pdf){:target="_blank"} | <a href="javascript:dropdown('tmars');">Citation</a>     
<div id="tmars-tldr" class="hidden"><b>TLDR:</b>
		We propose an algorithm to filter web datasets used for training CLIP in order to learn better visual representations, and achieve state-of-art zeroshot accuracy on vision tasks.
<br><br> </div>

<div id="tmars" class="hidden">
<pre>@article{maini2023tmars,
  title={T-MARS: Improving Visual Representations by Circumventing Text Feature Learning},
  author={Maini, Pratyush and Goyal, Sachin and Lipton, Zachary C and Kolter, J Zico and Raghunathan, Aditi},
  booktitle={Arxiv},
  year={2023}
}</pre></div>   

(7) [Model-tuning Via Prompts Makes NLP Models Adversarially Robust](https://arxiv.org/abs/2303.07320){:target="_blank"}   
*Mrigank Raman\*, Pratyush Maini\*, Zico Kolter, Zachary C. Lipton, Danish Pruthi*   
AdvML-Frontiers @ International Conference on Machine Learning (**ICML**) 2023 ![](https://img.shields.io/badge/-workshop-blue)  
<a href="javascript:dropdown('ssft-tldr');">TLDR</a> | [Paper](https://openreview.net/forum?id=yKDKNzjHg8N){:target="_blank"} | [Video](){:target="_blank"} | [Slides](files/SSFT/SSFT_Slides.pdf){:target="_blank"} | [Poster](files/SSFT/SSFT_Poster.pdf){:target="_blank"} | <a href="javascript:dropdown('ssft');">Citation</a>     
<div id="ssft-tldr" class="hidden"><b>TLDR:</b><ol>
		<li>We analyze the forgetting and learning dynamics of neural networks to characterize different types of hard examples as belonging to mislabeled, rare and complex categories.</li>
		<li>Mislabeled Examples : Learnt Late, Forgotten Early</li>
		<li>Rare Examples: Learnt Late, Forgotten Late	</li>
		<li>Complex Examples: Learnt Late, Never Forgotten	</li>
	</ol>
<br><br> </div>

(6) [Characterizing Datapoints via Second-Split Forgetting](https://openreview.net/forum?id=bCdztvpaEUG){:target="_blank"}   
*Pratyush Maini, Saurabh Garg, Zachary C. Lipton, Zico Kolter*   
Conference on Neural Information Processing Systems(**NeurIPS**) 2022 ![](https://img.shields.io/badge/-conference-brightgreen) ![](https://img.shields.io/badge/-award_nomination-red)   
SCIS @ International Conference on Machine Learning (**ICML**) 2022 ![](https://img.shields.io/badge/-workshop-blue)  ![](https://img.shields.io/badge/-oral-red)   
<a href="javascript:dropdown('ssft-tldr');">TLDR</a> | [Paper](https://openreview.net/forum?id=yKDKNzjHg8N){:target="_blank"} | [Video](){:target="_blank"} | [Slides](files/SSFT/SSFT_Slides.pdf){:target="_blank"} | [Poster](files/SSFT/SSFT_Poster.pdf){:target="_blank"} | <a href="javascript:dropdown('ssft');">Citation</a>     
<div id="ssft-tldr" class="hidden"><b>TLDR:</b><ol>
		<li>We analyze the forgetting and learning dynamics of neural networks to characterize different types of hard examples as belonging to mislabeled, rare and complex categories.</li>
		<li>Mislabeled Examples : Learnt Late, Forgotten Early</li>
		<li>Rare Examples: Learnt Late, Forgotten Late	</li>
		<li>Complex Examples: Learnt Late, Never Forgotten	</li>
	</ol>
<br><br> </div>


<div id="ssft" class="hidden">
<pre>@inproceedings{
	maini2022characterizing,
	title={Characterizing Datapoints via Second-Split Forgetting},
	author={Pratyush Maini and Saurabh Garg and Zachary Chase Lipton and J Zico Kolter},
	booktitle={Advances in Neural Information Processing Systems},
	editor={Alice H. Oh and Alekh Agarwal and Danielle Belgrave and Kyunghyun Cho},
	year={2022},
	url={https://openreview.net/forum?id=yKDKNzjHg8N}
}</pre></div>   

(5) [Dataset Inference: Ownership Resolution in Machine Learning](https://openreview.net/pdf?id=hvdKKV2yt7T){:target="_blank"}   
*Pratyush Maini, Mohammad Yaghini, Nicolas Papernot*   
International Conference on Learning Representations (**ICLR**) 2021 ![](https://img.shields.io/badge/-conference-brightgreen) ![](https://img.shields.io/badge/-spotlight-yellow)   
Privacy Preserving Machine Learning (**PPML**) Workshop at **NeurIPS** 2020 ![](https://img.shields.io/badge/-workshop-blue)   
Workshop on Dataset Curation and Security (**WDCS**) at **NeurIPS** 2020 ![](https://img.shields.io/badge/-workshop-blue)   
<a href="javascript:dropdown('di-tldr');">TLDR</a> | [Paper](https://openreview.net/forum?id=hvdKKV2yt7T){:target="_blank"} | [Video](https://slideslive.com/38940925/dataset-inference-ownership-resolution-in-machine-learning){:target="_blank"} | [Slides](files/DI/DI_Slides.pdf){:target="_blank"} | [Poster](files/DI/DI_Poster.pdf){:target="_blank"} | <a href="javascript:dropdown('di');">Citation</a>     
<div id="di-tldr" class="hidden"><b>TLDR:</b><ol>
		<li>Dataset Inference (DI) resolves model ownership without the need for retraining; and does not have a trade-off with task accuracy.</li>
		<li>We prove that the success of Membership Inference decreases as overfitting reduces, whereas DI is independent of the same.</li>
		<li>We introduce a new method for black-box ownership resolution that requires less than 50 private training points from the victim’s dataset.	</li>
	</ol>
<br><br> </div>


<div id="di" class="hidden">
<pre>@article{maini2021dataset,
	title={Dataset Inference: Ownership Resolution in Machine Learning},
	author={Pratyush Maini and Mohammad Yaghini and Nicolas Papernot},
	booktitle={ICLR 2021},
	year={2020},
	url={https://openreview.net/forum?id=hvdKKV2yt7T},
	note={Spotlight at ICLR 2021}
}</pre></div>   

    
(4) [Data-Free Model Extraction](https://arxiv.org/abs/2011.14779){:target="_blank"}   
*Jean-Baptiste Truong\*, Pratyush Maini\*, Robert Walls, Nicolas Papernot*   
Conference on Computer Vision and Pattern Recognition (**CVPR**) 2021 ![](https://img.shields.io/badge/-conference-brightgreen)    
<a href="javascript:dropdown('dfme-tldr');">TLDR</a> | [Paper](https://arxiv.org/abs/2011.14779){:target="_blank"} | [Code](https://github.com/cake-lab/datafree-model-extraction){:target="_blank"} | [Poster](files/DI/DI_Poster.pdf){:target="_blank"} | <a href="javascript:dropdown('dfme');">Citation</a>     
<div id="dfme-tldr" class="hidden"><b>TLDR:</b> We analyze the importance of similarity between surrogate & victim datasets for the success of model stealing attacks, and develop a method to steal ML models with zero knowledge of the victim’s training data.<br><br> </div>
<div id="dfme" class="hidden">
<pre>@article{truong2021data,
	title={Data-Free Model Extraction},
	author={Jean-Baptiste Truong* and Pratyush Maini* and Robert J. Walls and Nicolas Papernot},
	booktitle={arXiv preprint arXiv:2011.14779},
	year={2021},
	url={https://arxiv.org/abs/2011.14779},
	note={under review at CVPR 2021},
}</pre></div>

(3) [Perturbation Type Categorization for Multiple $\ell_p$ Bounded Adversarial Robustness](https://openreview.net/pdf?id=Oe2XI-Aft-k){:target="_blank"}   
*Pratyush Maini, Xinyun Chen, Bo Li, Dawn Song*   
Conference on Uncertainty in Artificial Intelligence (**UAI**) 2022 ![](https://img.shields.io/badge/-conference-brightgreen)   
**ICML** Workshop on Uncertainty and Robustness in Deep Learning ![](https://img.shields.io/badge/-workshop-blue)      
<a href="javascript:dropdown('protector-tldr');">TLDR</a> | [Paper](https://openreview.net/pdf?id=Oe2XI-Aft-k){:target="_blank"} | <a href="javascript:dropdown('protector');">Citation</a>     
<div id="protector-tldr" class="hidden"><b>TLDR:</b> We demonstrate that adversarial perturbations belonging to different threat models can be separated, and use this intuition to propose a two stage pipeline <i>PROTECTOR</i> that is robust against multiple perturbation types.<br><br> </div>
<div id="protector" class="hidden">
<pre>@InProceedings{maini2022perturbation,
  title = 	 {Perturbation Type Categorization for Multiple $\ell_p$ Bounded Adversarial Robustness},
  author =       {Pratyush Maini and Xinyun Chen and Bo Li and Dawn Song},
  booktitle = 	 {Proceedings of The 38th Uncertainty in Artificial Intelligence Conference},
  year = 	 {2022},
  series = 	 {Proceedings of Machine Learning Research},
  url={https://openreview.net/pdf?id=Oe2XI-Aft-k},
}</pre></div>

(2) [Adversarial Robustness Against the Union of Multiple Perturbation Models](https://arxiv.org/abs/1909.04068){:target="_blank"}   
*Pratyush Maini, Eric Wong, Zico Kolter*   
International Conference on Machine Learning (**ICML**) 2020 ![](https://img.shields.io/badge/-conference-brightgreen)   
<a href="javascript:dropdown('multiple-tldr');">TLDR</a> | [Paper](https://arxiv.org/abs/1909.04068){:target="_blank"} | [Video](http://test.slideslive.com/38928141/adversarial-robustness-against-the-union-of-multiple-petrubation-models?ref=speaker-31494-latest){:target="_blank"} | [Slides](/files/MSD/robust_union.pdf){:target="_blank"} | [Code](https://github.com/locuslab/robust_union){:target="_blank"} | <a href="javascript:dropdown('multiple');">Citation</a>  
<div id="multiple-tldr" class="hidden"><b>TLDR:</b> We develop a generalization of the standard PGD-based procedure to train architectures which are robust against multiple perturbation models, outperforming past approaches on the MNIST and CIFAR10 datasets.<br><br> </div>
<div id="multiple" class="hidden">
<pre>@inproceedings{maini2020adversarial,
	title={Adversarial Robustness Against the Union of Multiple Perturbation Models}, 
	author={Pratyush Maini and Eric Wong and J. Zico Kolter},
	booktitle={International Conference on Machine Learning},
	year={2020},
	url = "https://arxiv.org/abs/1909.04068"
}</pre></div>
    
(1) [Why and when should you pool? Analyzing Pooling in Recurrent Architectures](https://arxiv.org/abs/2005.00159){:target="_blank"}   
*Pratyush Maini, Keshav Kolluru, Danish Pruthi, Mausam*   
**EMNLP** (Findings) 2020 ![](https://img.shields.io/badge/-conference-brightgreen)   
**BlackBoxNLP** 2020 ![](https://img.shields.io/badge/-workshop-blue)   
<a href="javascript:dropdown('pooling-tldr');">TLDR</a> | [Paper](https://arxiv.org/abs/1909.04068){:target="_blank"} | [Video](){:target="_blank"} | [Slides](files/Pooling/Pooling_slides.pdf){:target="_blank"} | [Code](https://github.com/dair-iitd/PoolingAnalysis){:target="_blank"} | [Blog](https://pratyushmaini.github.io/Pooling-Analysis){:target="_blank"} | [Poster](files/Pooling/Pooling_Poster.pdf){:target="_blank"} | <a href="javascript:dropdown('pooling');">Citation</a>     
<div id="pooling-tldr" class="hidden"><b>TLDR:</b><ol>
	<li> Pooling (and attention) help improve learning ability and positional invariance of BiLSTMs. </li>
	<li> Pooling helps improve sample efficiency (low-resource settings) and is particularly beneficial when important words lie away from the end of the sentence. </li>
	<li> Our proposed pooling technique, max-attention (MaxAtt), helps improve upon past approaches on standard accuracy metrics, and is more robust to distribution shift. </li>
	</ol><br><br> </div>
<div id="pooling" class="hidden">
<pre>@inproceedings{maini2020pool,
	title = "Why and when should you pool? Analyzing Pooling in Recurrent Architectures",
	author = "Maini, Pratyush and Kolluru, Keshav and Pruthi, Danish and {Mausam}",
	booktitle = "Findings of the Association for Computational Linguistics: EMNLP 2020",
	year = "2020",
	address = "Online",
	publisher = "Association for Computational Linguistics",
	url = "https://www.aclweb.org/anthology/2020.findings-emnlp.410",
	note = {Also presented at BlackBoxNLP'20}
}</pre></div>

    
-----
\* = equal contribution


Academic Service
---
Reviewer for:   
*ML:* **NeurIPS** 2022, 2021, 2020*; **ICLR** 2022 (Highlighted Reviewer), 2021\*; **ICML** 2022    
*NLP:* **NAACL** 2021; **EMNLP** 2022, 2021   
*Others:* **IEEE S&P** 2021*, **CVPR** 2022, **AISTATS** 2022   

-----
\* = external reviewer
