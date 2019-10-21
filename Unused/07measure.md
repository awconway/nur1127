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

<iframe src="https://player.vimeo.com/video/367837632" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="2" title="Types of variables">

<iframe src="https://player.vimeo.com/video/367860725" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
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

<iframe src="https://player.vimeo.com/video/367867172" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
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

<iframe src="https://player.vimeo.com/video/367863654" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
</exercise>

<exercise id="10" title="Introduction to reliability & validity">

<iframe src="https://player.vimeo.com/video/367865519" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="11" title="Inter-rater reliability 1">

As we just heard, it is important that an indirect measurement instrument, such as a survey, is reliable. One way reliability can be demonstratied is by calculating the agreement in measurements taken by two different raters on the same subject at the same time (termed inter-rater reliability).

Let's go through a real example for how this is done. One of my recent studies aimed to determine the inter-rater reliability of the Tracking & Reporting Outcomes of Procedural Sedation tool [(TROOPS)](http://proceduralsedation.org/troops-overview/). To do this, we conducted a study where two nurses involved in a cardiac cath lab procedure would independently use the TROOPS tool for a patient. First, let's look at the data a little more closely. I have loaded two dataframes into the system. One is called *airway* and the other is called *quality*. These dataframes contain observations from the two nurse raters who scored the two different components of the TROOPS tool - one component is for airway complications and one is for sedation quality. Let's now take a look at each. 

<qu>Use the `dplyr::glimpse` function to inspect the dataframes by inserting their names in place of the  dotted lines, then press 'Run Code`</qu>

<codeblock id="07_03">

Insert the words airway and quality in place of the dotted lines and then press 'submit'.

</codeblock>

</exercise>

<exercise id="12" title="Inter-rater reliability 2">

One simple way we can determine agreement is to calculate the proportion of times in which there was agreement. Let's do that now. 

<qu>Use the `agree::percent` function to calculate overall agreement between the two raters for the airway and quality dataframes</qu>

<codeblock id="07_04">
We need to insert the words airway and quality into the brackets to run the analysis
</codeblock>
</exercise>

<exercise id="13" title="Inter-rater reliability 3">

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


<qu>Use the `agree:weightedKappa` function to calculate the correlation coefficient between the two raters for the airway and quality dataframes</qu>

<codeblock id="07_05">

</codeblock>
</exercise>

<exercise id="14" title="Internal consistency">

<iframe src="https://player.vimeo.com/video/367837863" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="15" title="Stability Exercise 1">

The stability of a measurement instrument can be assessed by determinig the extent to which similar results are obtained on successive applications. It can be assessed by calculating test-retest reliability. In terms of calculation, this is similar to inter-rater reliability in that we are interested in estimating the agreement between ratings *beyond random chance.*

The difference is that the ratings should be performed by the same person within a period of time that the underlying construct being measured should not have changed. However, complicating things a little, we need to also ensure, in particular for *indirect* measurements, that the interval between measurements is not so brief that the respondent would just be able to recall their exact responses from their previous rating.

Stability is important for both *direct* and *indirect* measurements and is calculated in a similar way. Let's again use one of my studies as an example to demonstrate the concept. 

In this [study](https://www-sciencedirect-com.myaccess.library.utoronto.ca/science/article/pii/S1053077015005510), we measured pre and post-procedural temperature of a large sample of patients undergoing procedures in a cath lab using an infrared aural canal thermometer. To reduce *random* error for the primary outcome of the study (prevalence of hypothermia defined as temperature below 36&deg;C), we measured temperature 3 times in a row with the same thermometer and took the average for use in our analysis. However, this is not how thermometers like this are commonly used in clinica practice. It is more common to just take one reading. So, as a secondary analysis, we also wanted to determine the test-retest reliability for temperature measurements with an infrared aural canal thermometer. First, let's get a sense of how much variation in temperature measurements there were over the three repeated measurements (these variables were named T1, T2, T3 in the dataset). The best way to do this is with data visualization.

<qu>We want to create a line plot of the 3 repeated measurements of temperature recorded for the first 20 participants. In place of the dotted lines, plot *time* on the x-axis and *temp* on the y-axis.</qu>

<codeblock id="07_06">
Replace the dotted lines with the words time for the x-axis and temp for the y-axis.
</codeblock>

</exercise>


<exercise id="16" title="Stability Exercise 2">

We clearly saw that temperature measurements changed over the repeated measurements even though they were taken immediately after one another. So evaluating the stability of the measurement is vital. 


The **intra-class correlation coefficient (ICC)** is the recommended reliability statistic for measurements taken on a continuous scale - i.e. interval and ratio (and also ordinal if using the special case of treating the numbers assigned to rankings as interval) ([COSMIN](http://www.cosmin.nl/images/upload/files/COSMIN%20checklist%20manual%20v9.pdf)). ICC values range between 0 and 1, with values closer to 1 reflecting strong reliability. Below is a reference table from ([Koo & Li, 2015](https://www-sciencedirect-com.myaccess.library.utoronto.ca/science/article/pii/S1556370716000158)), that you may find useful when appraising studies using instruments that you consider should have demonstrated adequate test-retest reliability in order to determine that the data collected from the instrument is 'trustworthy'.

|ICC |Interpretation|
|---|---|
|<0.5 | Poor reliability|
|0.5 - 0.75| Moderate reliability|
|0.75 - 0.9| Good reliability|
|>0.9| Excellent reliability|


ICC calculates both consistency of measurements from test to retest (within subject changes), and change in average measurements of participating subjects over time (systematic changes).

<qu>To calculate the intraclass correlation coefficient for the three repeated temperature measurements in the 767 participants included in the sample, insert the name of the full dataset (iccdata) in place of the dotted lines and press 'submit'</qu>

<codeblock id="07_07">
We just need to input the name of the data set, which is iccdata. 
</codeblock>

</exercise>

<exercise id="17" title="Stability Exercise 3">

Although that reference guide for interpreting ICC's for test-retest reliability is useful, a downside of the ICC is that it is essentially 'unitless'. A different statistic, known as Standard Error of Meaurement (SEM), provides an absolute index of reliability, which has the same units as the measurement of interest. The SEM can be calculated with the formula: 

*SEM=SD√1-ICC,* 

where SD is the average of the standard deviations of repeated measurements. Let's calculate for SEM for the temperature measurements.

<qu>In the first line of code, input the names of the timepoints in which temperature was measured so that we can calculate the average of the standard deviations of temperature measurements. In the second line of code, insert the value for the ICC we calculated in the last exercise.</qu>

<codeblock id="07_08">
The icc calculated in the last exercise was 0.74. Head back to the plot we made for the names of the timepoints that temperature was measured. The $ is just an operator to select a column by name from a dataset.
</codeblock>

</exercise>

<exercise id="18" title="Stability Exercise 4">

Where SEM comes in really handy is when it is used to determine if the magnitude of a difference between two measurements is real (i.e. if the difference is larger than measurement error). It is calculated with the following formula:

*SEM x 1.96 x √number of measurements*

Because we measured temperature 3 times for each participant, and each score has a 'true' component and 'error' component,  multiplying the SEM by the square root of the number of measurements solves for the standard deviation of difference scores and then multiplying by 1.96 allows for construction of 95% confidence intervals. Let's calculate it now.

<qu>In the first line of code, enter in the SEM that we calculated in the last exercise. In the second line of code, enter in the number of repeated measurements that were taken for each participant in the study.</qu>

<codeblock id="07_09">
The icc calculated in the last exercise was 0.74. Head back to the plot we made for the names of the timepoints that temperature was measured.
</codeblock>
</exercise>

<exercise id="19" title="Validity">

<iframe src="https://player.vimeo.com/video/367840406" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="20" title="Convergent Validity Exercise 1">

It is good to have evidence to support the validity of a measurement instrument from the populations in which it is being used. One common instrument used to measure depression is called the PHQ-9, which stands for the Patient Health Questionnaire 9-item scale. Psychological disorders, such as depression, are common after heart transplant. Prior to a [study](https://www-sciencedirect-com.myaccess.library.utoronto.ca/science/article/pii/S0897189716300982I) I conducted a number of years ago, the validity of this scale had not been evaluated for heart transplant recipients. To demonstrate the principles of convergent validity - let's do some analyses!

So, we know from the video that one way to demonstrate that the PHQ-9 measures what it intends to measure, would be to show that PHQ-9 scores from a sample of heart transplant recipients are associated with scores from a measure of a related construct. There is good evidence to support the theory that people with greater levels of depressive symptoms have worse health-related quality of life. In our study, we asked a sample of 80 heart transplant recipients to rate both their level of depressive symptoms using the PHQ-9 and their health-related quality of life using the Medical Outcomes [Short Form 36-item Health Survey](https://www-sciencedirect-com.myaccess.library.utoronto.ca/topics/nursing-and-health-professions/short-form-36) (SF-36). In particular, the Mental Component Summary (MCS) subscale within the SF-36 measures the mental health dimension that makes up the construct of health-related quality of life as a whole. So if we think back to the target, in this situation it would be split into two halves - the shots fired on one side of the target represent the items contained within the Mental Health subscale and the shots fired that hit the other side of the target represent the items contained within the Physical Health subscale. Frist take a look at the data and then answer the question below.

<qu>We want to plot participant scores for the mental health (MCS) and physical health (PCS) subscales of the SF-36 against their scores on the PHQ9. To do this, place SF36 subscales on the x-axes for the two plots and PHQ9 on the y-axes.</qu>


<codeblock id="07_10">
The name of the variable for the mental health subscale is MCS and for physical health it is PCS. The name of the variable for the PHQ9 is PHQ9.
</codeblock>


What is true about these plots?

<choice>

<opt text="Participants who had high PCS scores tended to have lower PHQ9 scores">

I wouldn't be confident to draw this conclusion from the plot. There seems to be clusters of points in the bottom left corner that probably wouldn't be there if there was a really strong negative correlation between these two scores.

</opt>

<opt text="There is a positive correlation between MCS scores and PHQ9 scores">

The fact that higher MCS scores seem to be associated with lower PHQ9 scores would be better characterized as a 'negative' correlation because they are headed in opposite directions.

</opt>

<opt text="Participants who had high MCS scores tended to have lower PHQ9 scores" correct="TRUE">

:smile:

</opt>


</choice>

</exercise>

<exercise id="21" title="Convergent Validity Exercise 2">

Plotting the scores gave us some good initial insight into the associations between health-related quality of life and severity of depression scores measured by the PHQ-9. It seemed that there may have been an association for the mental health dimension, but not quite so for the physical health. This is of course to be expected. Now we should do some statistical tests to properly evaluate the convergent validity of the PHQ-9. To provide evidence of convergent validity, we *hypothesize* that greater scores on the PHQ-9 (indicating worse depressive symptoms) are associated with lower scores in the mental health subscale of the SF36 (lower scores indicate worse quality of life). To do this, we can conduct a test to determine the correlation between the two scores. 

<qu>Create a new plot below using the `corrPlot` function to determine if there is a statistically significant correlation between the MCS and PHQ9 scores. This plot will fit a regression line to the data points and show the Pearson's correlation coefficient.</qu>

<codeblock id="07_11">
The name of the variable for the mental health subscale is MCS and the name of the variable for the PHQ9 is PHQ9.
</codeblock>

<qu>I haven't shown an example of divergent validity, but this is just the opposite of convergent. We would instead make a hypothesis that scores on the new instrument would *not* be associated with the another measurement that theoretically should not be related to the construct in question.</qu>

</exercise>

<exercise id="22" title="Criterion validity">

<iframe src="https://player.vimeo.com/video/367841846" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
</exercise>

<exercise id="23" title="Reading">

**Relevant chapters on measurement from your text for your reference**

Gray, J.R., Grove, S.K. & Sutherland, S.  (2017). The Practice of Nursing Research (8th ed.)
- Chapter 16: Measurement concepts (pp. 363 - 393).
- Chapter 17: Measurement methods used in developing evidence-based practice (pp. 411-430).

</exercise>


<exercise id="24" title="Discussion">

We're looking at the same article as last week except focusing our discussion on the measurement, validity and reliability aspects of the research design.

Each student is asked to respond to one of the following questions:

- How were the variables conceptualized and operationalized?

- Were the data collection methods clearly described? Do these methods align with the main assumptions underpinning quantitative research?

- Were the instrument(s) (e.g., questionnaire) clearly described?

- How were reliability and validity of the measures (e.g., instruments) assessed?  

<a target="_parent" href="https://q.utoronto.ca/courses/113018/discussion_topics/326843">Link to discussions on Quercus</a>

`Note: If you are viewing this on the 'Student' mobile app, it is better to navigate back to the discussion section through the app rather than clicking on the link above.`

<iframe src="https://www.aaronconway.info/web/viewer.html?file=%2FNUR1027/curtis.pdf" width="100%" height="1050px"></iframe>


</exercise>
