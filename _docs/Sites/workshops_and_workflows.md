---
title: Workshops and Workflows
permalink: workshops_and_workflows.html
sidebar: sidebar
product: SIH Statistics Resources
---

* TOC
{:toc}

Statistical Consulting within the Sydney Informatics Hub offers a modular training programme made up of 1.5 hour workshops, each focusing on a single statistical method. Statistical Workflows giving practical step-by-step instructions applicable in any software are used and include experimental design, exploratory analysis, modelling, assumption testing, model interpretation and presentation of results. They are integrated into Training Pathways to give a holistic understanding of data analysis from a statistical perspective. You are encouraged to design a custom programme by mixing and matching workshops from different training pathways tailored to your research needs.

We continue to develop and improve our workshop offering through feedback and the needs we identify in our statistical consulting service. The workshop slides will be periodically updated, so we encourage you to regularly come back and download the most recent versions. The version number is shown next to the slides for download.

If you would like a synopsis of each workshop, or if you would like to know the next date that our workshops will be delivered to University of Sydney staff and students, [click here](https://www.sydney.edu.au/research/facilities/sydney-informatics-hub/workshops-and-training.html). To sign up for our training newsletter to hear about upcoming workshops and some training tips [click here](https://signup.e2ma.net/signup/1945889/1928048/).

### Acknowledgement of Workshops

The continued acknowledgment of the use of Sydney Informatics Hub facilities including Statistical Consulting ensures the sustainability of our services. For  acknowledging the use of our workshops and/or workflows, go to the [Acknowledgement of Statistical Consulting Service section](acknowledgements) of this website.


### Training Pathways
#### Foundational Statistics 

##### Research Essentials 
In this workshop we will give you a systematic workflow to apply to any research data analysis to make your quantitative work comprehensive, efficient, and more suitable for top-tier journals. We introduce you to the resources available from both the Sydney Informatics Hub and across the University that will support you in proceeding from hypothesis generation all the way through to publication. Our research workflow consists of a series of defined steps that will assist you in thinking about your data and preparing it for statistical analysis. Data analysis concepts will be covered in detail, including how experimental design fits into hypothesis generation and your final publication; and how to manage your analysis data and Exploratory Data Analysis (EDA) – an essential and often-overlooked stage of data analysis for determining the appropriate statistical methods to apply in your research. We will show you some of the more advanced statistical analysis methods to give you an idea of what is possible. Note that this workshop does not require knowledge of, or use of specific statistical software. The analysis methods may be performed using a range of university-supported software options.
  * [Research Essentials: Analysing your Data v4.3](assets/files/Research%20Essentials%20v4.3%2022-11-15%20HANDOUT.pdf) 
  * [Statistical Analysis Roadmap for SPSS](assets/files/Statistical%20analysis%20roadmap%20for%20SPSS.pdf)

##### Experimental Design 
In this workshop we focus on the key aspects of experimental design that researchers and students may need to apply in their research. Higher degree research students and researchers engaging in new research are especially invited to attend. During the workshop there will be the opportunity to discuss your own research question and associated experimental design. The workshop will include the topics of (1) your research question, (2) experimental validity, (3) randomisation and bias, (4) blinding and bias, (5) blocking and confounding, (6) fixed and random effects, (7) replication and experimental units. No pre-requisite knowledge of statistical methods is required.
  * [Experimental Design v1.4](assets/files/Experimental%20Design%20v%201.4.pdf)

##### Power and Sample Size 
In this workshop we will show you how power and sample size calculations will help you to determine the number of necessary subjects to include in your study, for completion of ethics and grant requirements, and ensure that you have thoroughly thought about your study design. This workshop covers the theory and concepts of power analysis and includes worked examples using G\*Power software. You will follow the examples on your own laptop PC or Mac. It is essential you have G\*Power pre-installed on your machine prior to the workshop. Download software from the G*Power website [here](https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower.html). It's free, and available for both Windows and MacOS.
  * [Power and Sample Size v22.2](assets/files/Power%20and%20sample%20size%20v22.2.pdf) 
  * [Power Simulation RMarkdown](assets/files/Example1-simulation.Rmd) 
  * [Power Simulation html](assets/files/Example1-simulation.html)
  * [Power and Sample Size - SPSS Workflow v1](assets/files/Power%and%sample%size%-%SPSS%v1.pdf)



#### Statistical Modelling 
This pathway consists of:
   * 3 workshops for researchers interested in statistical methods such as linear regression, ANOVA, ANCOVA, mixed models, logistic/binary and count (Poisson) regression. Each one builds on the preceding workshop and together they show how all these analyses can be performed using the same easy to understand Generalised Linear Mixed Model (GLMM) framework and workflow. Additionally, how they can be used to analyse experimental designs such as Control vs Treatment, Randomised Control Trials (RCTs), Before After Control Impact (BACI) analysis, repeated measures, plus many more. 
   * A 4th complementary workshop called Statistical Model Building which we recommend for those experienced with Linear Models or for those who have done at least the first 2 of our Linear Models workshops.

The material is organised around Statistical Workflows, applicable in any software, giving practical step-by-step instructions on how to do the analysis, including assumption testing, model interpretation, and presentation of results


##### Linear Models 1: Linear Regression, ANOVA, ANCOVA and Repeated Measures (a Simple Mixed Model) 
In this workshop we focus on practical data analysis by presenting statistical workflows applicable in any software for four of the most common univariate analyses: linear regression, ANOVA, ANCOVA, and repeated measures (a simple mixed model) – all assuming a normal (gaussian) residual. These workflows can be easily extended to more complex models. The R code used to create output is also included. 
  * [Linear Models 1 v1.26](https://github.com/Sydney-Informatics-Hub/stats-resources/blob/gh-pages/assets/files/Linear%20Models%20I%20-%20regression%2C%20ANOVA%2C%20ANCOVA%2C%20repeated%20measures%20HANDOUTS%20v1.26%2010-5-2023.pdf)
 
##### Linear Models 2: Logistic and Poisson/Count Regression - An Introduction to Generalised Linear Models 
​In this workshop we focus on practical data analysis applicable in any software for two of the more common GLMMs: Logistic regression for binary data (using a Binomial distribution); and Poisson/count regression for count data (using a Poisson distribution). The GLM framework is also described in detail. The R code used to create output is also included. ​
  * [Linear Models 2 v2.11](https://github.com/Sydney-Informatics-Hub/stats-resources/blob/gh-pages/assets/files/Linear%20Models%20II%20Logistic%20and%20Poisson%20regression-an%20intro%20to%20GLMs%20HANDOUTS%20v2.11%2010-5-2023.pdf)
  
##### Linear Models 3: Building interpretable models that enable knowledge creation, and other tips and tricks  
Statistical analysis is more than just building the best predictive model, it should also enable you to make the discoveries required to build new knowledge. Constructing engaging narratives about your research is also invaluable as you look to connect with your field, the community and funding bodies. To do this you need to test hypotheses, uncover unknown patterns, and present results in insightful, intuitive and memorable ways. In short, you need to build interpretable models. In this workshop we explore tips and tricks to make your statistical analyses do just that. Topics covered will be (1) reporting tricks that aid interpretation - estimated marginal means, confidence vs prediction intervals, applying and correcting for multiple comparisons, reporting variable ‘importance’, plus other reporting and interpretation tricks; (2) model parameterisation using the design matrix - interpreting categorical predictor parameters, dummy and effects coding; (3) more on mixed models - introducing the random slope.
  * [Linear Models 3 v1.45](assets/files/Linear%20Models%20III%20Advanced%20Topics%20Tricks%20and%20Tips%20HANDOUTS%20v1.45%2026-4-2023.pdf)

##### Statistical Model Building 
In this workshop we will introduce you to the key aspects and strategies of statistical model building to help you answer your research question, and avoid common pitfalls, erroneous models and incorrect conclusions. Appropriate statistical model building will help you to gain knowledge, as opposed to simply getting the best prediction (although that can be a goal as well). We will focus on concepts such as variable selection, multi-collinearity, interactions, selecting a model building strategy, comparing models and evaluating models. In general, these concepts are useful for any statistical model building. This workshop will provide generalised linear regression model examples. The focus will be on practical application of concepts, so mathematical descriptions will be kept to a minimum.
  * [Statistical Model Building v1.5](assets/files/SIH%20SC%20Statistical%20Model%20Building%20v1.5%20presented%2022-05-25.pdf)



### Specialist Statistics 

##### Design and Analysis of Surveys 1 
In this workshop we present a range of practical tips and guidelines on how to design, field, and analyse the more commonly used surveys. The initial focus is on how to setup and field a study. A variety of different questions and scales, including some unorthodox and novel ones, will be presented to give an appreciation of what is possible. Some of the topics covered will be line vs discrete scales, the effect of colour, optimal discrete/LIKERT scales, etc. Then we will present on basic analysis of common question types and reporting. We will discuss the pros and cons of common analyses (e.g. linear vs ordinal regression). The material is software agnostic and can be applied in any software.
   * [Surveys 1 v2.11](https://github.com/Sydney-Informatics-Hub/stats-resources/blob/gh-pages/assets/files/Surveys%201%20-%20An%20Introduction%20HANDOUTS%20v2.11%2024-5-2023.pdf)

##### Design and Analysis of Surveys 2: Advanced Topics 
In this workshop we build on the information from Surveys 1. We explore topics including questionnaire validation and index creation using methods such as Exploratory Factor Analysis (EFA), Confirmatory Factor Analysis (CFA) using Structural Equation Modelling (SEM), and Conjoint models such as Choice modelling. The material is software agnostic and can be applied in any software.
   * [Surveys 2 v1.6](https://github.com/Sydney-Informatics-Hub/stats-resources/blob/gh-pages/assets/files/Surveys%202%20-%20Advanced%20Topics%20HANDOUTS%20v1.6%2024-5-2023.pdf)

##### Multivariate Statistical Analysis 1: Dimension Reduction 
In multivariate statistics we simultaneously model and estimate variability in more than one variable often in order to examine the relationship between variables. In this workshop we examine the key aspects of moving from univariate to multivariate analysis, and the situations and scenarios where multivariate analysis is typically applied. We will focus on practical application of concepts through examples.
   * [Multivariate Statistical Analysis 1: Dimension Reduction v1.8](assets/files/Multivariate%20Statistical%20Analysis%20v1.8.pdf)

##### Meta-Analysis: An Introduction 
In this workshop we provide a theoretical and practical introduction to meta-analysis as part of a systematic review. We examine the process of performing a meta-analysis, in particular focussing on key statistical concepts such as heterogeneity and fixed and random effects modelling. We will discuss the available choices of statistical software and show you worked examples using the metafor package in R. A basic knowledge of R software is desirable, but not necessary, since you are not expected to produce and run your own code during the workshop.
   * [Meta-Analysis - An Introduction v22.4](assets/files/Meta-Analysis%20v22.4.pdf)
   * [Example Data File](assets/files/Meta_Sutton_Smith%2022-06.csv) 
   * [Example R Script](assets/files/Meta-Analysis%20workshop%20example%2022-06.R)

##### Introduction to Survival Analysis 
Survival analysis is used when you want to measure the time elapsed up to when a specified event occurs. It is commonly used in studies where subjects are followed until death occurs, hence the name. In this workshop we will introduce some key concepts pertaining to survival analysis, including censoring of cases, the survival function, and the hazard ratio estimator. The Kaplan Meier survival curve will be explained through a worked example and the technique of Cox proportional hazards regression will be introduced using the same example dataset. You will be provided with software code in SPSS and R to reproduce the analysis presented in the workshop.
   * [Introduction to Survival Analysis v22.12.pdf](assets/files/Introduction%20to%20Survival%20Analysis%20v22.12%20HANDOUT.pdf)
   * [WHAS500 csv Data](assets/files/WHAS500data.csv) 
   * [Survival R Markdown](assets/files/SurvivalAnalysis_R%20(4).Rmd) 
   * [Survival R html](assets/files/SurvivalAnalysis_R%20(2).html) 
   * [Survival SPSS Data](assets/files/WHAS500_data.sav) 
   * [Survival SPSS Syntax](assets/files/Survival_Workshop_syntax%20(1).sps)



{% include links.html %}
