---
title: 'Week 7: Measurement in research'
description:
  'Important concepts in understanding the importance of measurement in quantitative research.'
prev: null
next: null
type: chapter
id: 8
---

<exercise id="1" title="Introduction">

measure_intro.Rmd

</exercise>

<exercise id="2" title="Types of variables">

measure_variables.Rmd

</exercise>

<exercise id="3" title="Basketball standings">


After every day of competition during the regular season, the National Basketball Association (NBA) updates the standings (or rankings) of every team in the league based on their relative number of wins and losses. An NBA analyst saves the latest standings for each team in a variable called standings. To which family of variables does standings belong?

<choice>

<opt text="Nominal">

A nominal variable is a variable that is used to assign individual cases to categories.

</opt>

<opt text="Ordinal" correct="TRUE">

An ordinal variable is a variable that is used to rank order cases. On to the next exercise:smile:

</opt>


<opt text="Interval">

An interval variable is a variable that is used to rank order cases and the distance, or interval, between each value is equal.

</opt>


<opt text="Ratio">

A ratio variable is a variable similar to an interval variable, but it has a "true zero".

</opt>

</choice>

</exercise>


<exercise id="4" title="Temperature">

Which type of variable is temperature, when measured in degrees Celsius?

<choice>

<opt text="Nominal">

A nominal variable is a variable that is used to assign individual cases to categories.

</opt>

<opt text="Ordinal">
An ordinal variable is a variable that is used to rank order cases.

</opt>

<opt text="Interval"  correct="TRUE">
An interval variable is a variable that is used to rank order cases and the distance, or interval, between each value is equal.

</opt>

<opt text="Ratio">

A ratio variable is a variable similar to an interval variable, but it has a "true zero". Temperature in celsius does not have a 'true' zero point because 0 degrees celsius does not indicate the 'absence' of temperature.

</opt>

</choice>

</exercise>

<exercise id="5" title="Scales of measurement">

measure_scales.Rmd

</exercise>

<exercise id="6" title="Level of measurement exercise 1">

In the first line of code we create a variable containing 5 temperature observations, measured on a *nominal* scale and we call that 'nominal'.

In the second line of code we transform 'nominal' into a new variable measured on the *rank* scale by assigning a rank ordering to the categories and we'll call that 'rank'.

In the third line of code we assign numerical values to the categories of 'rank' and call that new variable 'numeric'.

In the last line of code, type in place of the dotted line the name of the variable you think would be required in order to be able to calculate the mean of the observations.

<codeblock id="07_01">

Enter the name of the variable (i.e. either nominal, rank or numeric) in place of the dotted line


</codeblock>

</exercise>

<exercise id="7" title="Level of measurement exercise 2">

The level of measurement for the variables have been set up in the first two lines of code as they were in the last exercise (i.e. nominal, rank). The next lines of code pull out the first two observations of each variable because we want to make comparisons between these observations. Which type of variable (nominal or rank) can we use to determine if the first observation is **greater than** the second?

<codeblock id="07_02">

Enter the names of the observations in place of the dotted lines on either side of the 'greater than' symbol (>). The answer is either nominal1 > nominal2 or rank1 > rank2.


</codeblock>

</exercise>

<exercise id="8" title="Direct and indirect measurement">

Another important concept of measurement in quantitative research is the distinction between direct and indirect measurement.
**Direct measures** are objective. Examples include blood pressure, temperature, age etc. The focus when undertaking critical appraisal of a research study that involved direct measures is on the *accuracy* and *precision* of the measurement.

**Indirect measurement** is common in clinical and health services research because it involves the measurement of abstract ideas. So these include variables such as job satisfaction, burnout and self-efficacy. The focus is on the *validity* of the indirect measurement in that it must be somehow deterined that the instruments truly matches the conceptual definition of the construct the researchers are attempting to measure.

</exercise>

<exercise id="9" title="Measurement error">
measure_error.Rmd
</exercise>

</exercise>

<exercise id="10" title="Introduction to reliability & validity">
measure_rel.Rmd
</exercise>

<exercise id="11" title="Inter-rater reliability 1">

As we just heard, it is important that an indirect measurement instrument, such as a survey, is reliable. One way reliability can be demonstratied is by calculating the agreement in measurements taken by two different raters on the same subject at the same time (termed inter-rater reliability).

Let's go through a real example for how this is done. One of my recent studies aimed to determine the inter-rater reliability of the Tracking & Reporting Outcomes of Procedural Sedation tool [(TROOPS)](http://proceduralsedation.org/troops-overview/). To do this, we conducted a study where two nurses involved in a cardiac cath lab procedure would independently use the TROOPS tool for a patient. First, let's look at the data a little more closely. I have loaded two dataframes into the system. One is called *airway* and the other is called *quality*. These dataframes contain observations from the two nurse raters who scored the two different components of the TROOPS tool - one component is for airway complications and one is for sedation quality. Let's now take a look at each. 

<qu>Use the `dplyr::glimpse` function to inspect the dataframes by inserting their names in place of the  dotted lines, then press 'Run Code`</qu>

<codeblock id="07_03">

Insert the word airway and quality in place of the dotted lines and then press 'run code'.

</codeblock>

</exercise>

<exercise id="12" title="Inter-rater reliability 2">

One simple way we can determine agreement is to calculate the proportion of times in which there was agreement. Let's do that now. 

<qu>Use the `irr::agree` function to calculate overall agreement between the two raters for the airway and quality dataframes</qu>

<codeblock id="07_04">

</codeblock>
</exercise>

<exercise id="12" title="Inter-rater reliability 3">

In the last exercise, you calculated some basic statistics for agreement between the two raters. *However,* this calculation does not account for the potential that agreement was observed due to random chance. To adjust for that, we need to use a different statistical test. In research papers that use some sort of indirect measurement instrument, like a scale or a survey, it is likely that you will come across this statistic being reported when the researchers are talking about the reliability of the instrument they used. 

Let's take a look at the Cohen's kappa statistic for measuring inter-rater reliability between two raters.

**Interpreting Cohen's kappa**

Kappa is a better way to measure reliability than simple percent agreement calculation because it accounts for the possibility of agreements occurring by chance. Because our variables are 'ordinal', the weighted kappa gives us a more robust measure of agreement. The guidelines in the table below can be used to assess the extent of inter-rater reliability between the two ratings provided by the nurses in the study. 

|Weighted kappa|Interpretation|
|---|---|
|0 - 0.39 | Poor agreement|
|0.4 - 0.59| Moderate agreement|
|0.6 - 0.79| Substantial agreement|
|0.8 - 1| Very strong agreement|


<qu>Use the `psych::cohen.kappa` function to calculate correlation coefficient with 95% confidence intervals between the two raters for the airway and quality dataframes</qu>

<codeblock id="07_05">

</codeblock>
</exercise>

<exercise id="13" title="Internal consistency">

measure_consistency.Rmd

</exercise>

<exercise id="14" title="Stability Exercise 1">

The stability of a measurement instrument can be assessed by determinig the extent to which similar results are obtained on successive applications. It can be assessed by calculating test-retest reliability. In terms of calculation, this is similar to inter-rater reliability in that we are interested in estimating the *agreement* between ratings beyond random chance.

The difference is that the ratings should be performed by the same person within a period of time that the underlying construct being measured should not have changed. However, complicating things a little, we need to also ensure, in particular for *indirect* measurements, that the interval between measurements is not so brief that the respondent would just be able to recall their exact responses from their previous rating.

Stability is important for both *direct* and *indirect* measurements and is calculated in a similar way. Let's again use one of my studies as an example to demonstrate the concept. 

In a [study](https://www-sciencedirect-com.myaccess.library.utoronto.ca/science/article/pii/S1053077015005510) I conducted a few years ago, we measured pre and post-procedural temperature of a sample of patients undergoing procedures in a cath lab using an infrared aural canal thermometer. To reduce *random* error, we measured temperature 3 times in a row with the same thermometer and took the average fo use in our analysis. However, this device is commonly used in practice, so we also wanted to determine the test-retest reliability for temperature measurements with an infrared aural canal thermometer. First, let's see what the data looks like by making a plot.

<qu>We want to create a line plot of the 3 repeated measurements of temperature recorded before procedures for the first 20 participants. In place of the dotted lines, plot *time* on the x-axis and *temp* on the y-axis.</qu>

<codeblock id="07_06">
Replace the dotted lines with the words time for the x-axis and temp for the y-axis.
</codeblock>

</exercise>


<exercise id="15" title="Stability Exercise 2">

We clearly saw that temperature measurements changed over the repeated measurements even though they were taken immediately after one another. So evaluating the stability of the measurement is vital. 


The **intra-class correlation coefficient (ICC)** is the recommended reliability statistic for measurements taken on a continuous scale - i.e. interval and ratio (and also ordinal if using the special case of treating the numbers assigned to rankings as interval) ([COSMIN](http://www.cosmin.nl/images/upload/files/COSMIN%20checklist%20manual%20v9.pdf)). ICC values range between 0 and 1, with values closer to 1 reflecting strong reliability. Below is a reference table from ([Koo & Li, 2015](https://www-sciencedirect-com.myaccess.library.utoronto.ca/science/article/pii/S1556370716000158)), that you may find useful when appraising studies using instruments that you consider should have demonstrated adequate test-retest reliability in order to determine that the data collected from the instrument is 'trustworthy'.

|ICC |Interpretation|
|---|---|
|<0.5 | Poor reliability|
|0.5 - 0.75| Moderate reliability|
|0.75 - 0.9| Good reliability|
|>0.9| Excellent reliability|


ICC calculates both consistency of measurements from test to retest (within subject changes), and change in average measurements of participating subjects over time (systematic changes). 

It is also important to note that assessment of the stability of a measurement instrument is a necessary requirement to be able to determine if the magnitude of a difference between two measurements is real (i.e. a difference larger than measurement error). 

</exercise>

