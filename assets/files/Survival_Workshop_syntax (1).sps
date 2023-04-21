* Encoding: UTF-8.
* Introduction to Survival Analysis.
* Syntax to accompany the workshop examples.
* This syntax is suitable to apply to the whas500.dat data file from the Wiley site ftp://ftp.wiley.com/public/sci_tech_med/survival.
* The variable and value labels should be added from the whas.txt file.
* Alternatively use the WHAS500_data.sav file that I have pre-prepared.
* Version 22-Feb-2021.
* Author: Jim Matthews, Sydney Informatics Hub.

* Kaplan-Meier procedure.
KM lenfol BY Gender
  /STATUS=fstat(1)
  /PRINT MEAN
  /PLOT SURVIVAL
  /TEST LOGRANK
  /COMPARE OVERALL POOLED.


* Cox Reg model with Gender as single explanatory factor.
COXREG lenfol
  /STATUS=fstat(1)
  /PATTERN BY Gender
  /CONTRAST (Gender)=Indicator(1)
  /METHOD=ENTER Gender 
  /PLOT SURVIVAL
  /PRINT=CI(95) 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).


* Cox Reg model using Stepwise selection from 14 putative variables.
COXREG lenfol
    /STATUS=fstat(1)
    /CONTRAST (Gender)=Indicator
    /CONTRAST (year)=Indicator
    /CONTRAST (av3)=Indicator
    /CONTRAST (sho)=Indicator
    /CONTRAST (afb)=Indicator
    /CONTRAST (mitype)=Indicator
    /CONTRAST (cvd)=Indicator
    /CONTRAST (chf)=Indicator
    /CONTRAST (miord)=Indicator
    /METHOD=FSTEP(LR) Gender Age hr sysbp diabp bmi cvd afb sho chf av3 miord mitype year
    /PRINT=CI(95)
    /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

******************************************************************************************************************
* Cox Regression model selection by Collett method.

* Model 2.
* Univariate for Age.
COXREG lenfol
  /STATUS=fstat(1)
  /METHOD=ENTER Age.

* Model 3.
* Univariate for Gender.
COXREG lenfol
  /STATUS=fstat(1)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender.

* Model 4.
* Univariate for BMI.
COXREG lenfol
  /STATUS=fstat(1)
  /METHOD=ENTER bmi.

* Model 5.
* Univariate for Heart Rate.
COXREG lenfol
  /STATUS=fstat(1)
  /METHOD=ENTER hr.

* Model 6.
* Age + Gender + BMI.
COXREG lenfol
  /STATUS=fstat(1)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender Age bmi.

* Model 7.
* Age + Gender + HR.
COXREG lenfol
  /STATUS=fstat(1)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender Age hr.

* Model 8.
* Age + BMI + HR.
COXREG lenfol
  /STATUS=fstat(1)
  /METHOD=ENTER Age bmi hr.

* Model 9.
* Gender + BMI + HR.
COXREG lenfol
  /STATUS=fstat(1)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender hr bmi.

* Model 10.
* Age + Gender + BMI + HR.
COXREG lenfol
  /STATUS=fstat(1)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender Age bmi hr.

* Model 11.
* As for model 10, but using BMI categories instead of continuous.
* First create the new bmi_cat variable.
RECODE bmi (Lowest thru 18.5=1) (18.5 thru 25=2) (25 thru 30=3) (30 thru Highest=4) INTO bmi_cat.
VARIABLE LABELS  bmi_cat 'BMI categories'.
VALUE LABELS bmi_cat
1 'Underweight'
2 'Normal Weight'
3 'Overweight'
4 'Obese'.
EXECUTE.

COXREG lenfol
    /STATUS=fstat(1)
    /PATTERN BY bmi_cat
    /PATTERN by Gender
    /CONTRAST (Gender)=Indicator
    /CONTRAST (bmi_cat)=INDICATOR(2)
    /METHOD=ENTER Gender Age bmi_cat hr
    /PRINT CI(95)
    /PLOT SURVIVAL.

***************************************************************************************************************

* Cox Regression with Time dependent covariates to check proportional hazards assumption.
* First review KM survival curves for categorical variables.
KM lenfol BY Gender
  /STATUS=fstat(1)
  /PRINT NONE
  /PLOT SURVIVAL.

KM lenfol BY bmi_cat
  /STATUS=fstat(1)
  /PRINT NONE
  /PLOT SURVIVAL.

* Check Interaction of Time with Age.
TIME PROGRAM.
COMPUTE T_COV_ = T_ * Age.
COXREG   lenfol
  /STATUS=fstat(1)
  /CONTRAST (bmi_cat)=Indicator(2)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender Age hr bmi_cat T_COV_ 
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

* Check Interaction of Time with Gender.
COMPUTE T_COV_ = T_ * Gender.
COXREG   lenfol
  /STATUS=fstat(1)
  /CONTRAST (bmi_cat)=Indicator(2)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender Age hr bmi_cat T_COV_ 
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

* Check Interaction of Time with BMI_cat.
TIME PROGRAM.
COMPUTE T_COV_ = T_ * bmi_cat.
COXREG   lenfol
  /STATUS=fstat(1)
  /CONTRAST (bmi_cat)=Indicator(2)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender Age hr bmi_cat T_COV_ 
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

* Check Interaction of Time with hr (initial heart rate).
TIME PROGRAM.
COMPUTE T_COV_ = T_ * hr.
COXREG   lenfol
  /STATUS=fstat(1)
  /CONTRAST (bmi_cat)=Indicator(2)
  /CONTRAST (Gender)=Indicator
  /METHOD=ENTER Gender Age hr bmi_cat T_COV_ 
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

****************************************************************************************

