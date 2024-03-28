* Encoding: UTF-8.
* Power and Sample Size Calculation – Software workflow for SPSS
* Syntax to accompany the workshop examples.
* Version 27-03-24
* Author: Alexandra Green, Sydney Informatics Hub.
***************************************************************************************************************

* Power Analysis: Independent-Sample Means

POWER MEANS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER=0.80 NRATIO=1 MEAN=10 SD=20.


POWER MEANS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER=0.80 NRATIO=1 MEAN=10 SD=15.


POWER MEANS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER=0.80 NRATIO=1 MEAN=10 SD=30.


POWER MEANS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER= 0.8 TO 0.9 BY 0.05 NRATIO=1 MEAN=10 
    SD=20.


POWER MEANS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER= 0.8 TO 0.9 BY 0.05 NRATIO=1 MEAN=10 SD=20    
  /PLOT TOTAL_N.

***************************************************************************************************************


* Power Analysis: Difference between 2 means (Mann-Whitney)

POWER MEANS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER=0.80 NRATIO=1 MEAN=4 SD=2.6 5.6.

***************************************************************************************************************


* Power Analysis: Difference between 2 proportions

POWER PROPORTIONS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER=0.8 NRATIO =1 PROPORTIONS=0.55 0.45 
    METHOD=FISHER ESTIMATE=NORMAL.


POWER PROPORTIONS INDEPENDENT
  /PARAMETERS TEST=NONDIRECTIONAL SIGNIFICANCE=0.05 POWER=0.8 NRATIO =1 PROPORTIONS=0.85 0.95 
    METHOD=FISHER ESTIMATE=NORMAL.

***************************************************************************************************************
