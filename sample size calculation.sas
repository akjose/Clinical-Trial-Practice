***********************************************************************
* This is a for HW1 Q6 calculating sample size when comparing two normal means.              *
***********************************************************************;

proc power;
twosamplemeans dist=normal groupweights=(1 1) alpha=0.05 power=0.85 stddev=1.4 
   meandiff=1 test=diff sides=2 ntotal=.;
plot min=0.1 max=0.9;
title "Sample Size Calculation for Comparing Two Normal Means (1:1 Allocation)"; 
run;

