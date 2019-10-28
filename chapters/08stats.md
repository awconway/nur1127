---
title: 'Week 8: Statistical Testing in Research and Critical Appraisal'
description:
  'Introduction to understanding statistical analysis in quantitative research.'
prev: null
next: null
type: chapter
id: 9
---

<exercise id="1" title="Introduction" type="slides">
<iframe src="https://player.vimeo.com/video/368809381" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
</exercise>

<exercise id="2" title="Binomial distributions">

Use the rbinom function to generate 10000 separate random flips with a 30% probability that it will be heads.

<codeblock id="08_01">

Enter the number of coin flips you want to simulate in the first argument and the probability of it being heads (as a proportion - eg 0.5 for 50% probability) as the third argument.


</codeblock>

</exercise>

<exercise id="3" title="Density and Cumulative Density" type="slides">

<iframe src="https://player.vimeo.com/video/367345599" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="4" title="Cumulative Density Exercise">

There is about a 15% chance that if you tried flipping ten coins that each had a 30% probability of heads, at least five would turn up heads. 

Run the code below, inspect the results and then answer the questions below. 

<codeblock id="08_02">

Run the code, inspect the results then answer the question. 

</codeblock>

Did you need all 10,000 trials to get an accurate answer?

<choice>

<opt text="No">

100 simulations produced a fairly different result - 17% instead of 15%. It really depends on how close to the truth we need to get. A 2% difference may not be all that important to our decision-making in this situation, but in other situations, for example in studies of mortality, a 2% difference may be very important. 

</opt>

<opt text="Yes" correct="TRUE">

Using only 100 simulations produced a fairly different result - 17% instead of 15%.

</opt>

</choice>


</exercise>

<exercise id="5" title="Normal distribution" type="slides">

<iframe src="https://player.vimeo.com/video/367349402" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="6" title="Normal distribution exercise 1">
Let's assume we conduct a study, measuring the construct of burnout in a sample of nurses on a (hypothetical) scale that ranges from 0-150. The mean score in the sample was 106. If we assume our sample is normally distributed, then what percentage of the sample will have a score higher than 106?
<choice>

<opt text="5%">

Remember that if we assume the sample is normally distributed, then scores will be symetrically distributed above and below the mean. Have another go.

</opt>

<opt text="50%" correct=TRUE>

If we assume a sample comes from a normal distribution, then 50% of the scores will be below the mean and 50% of the scores will be above the mean.

</opt>

<opt text="95%">

Remember that if we assume the sample is normally distributed, then scores will be symetrically distributed above and below the mean. Have another go.

</opt>

<opt text="100%">

If a sample is normally distributed, half the score will be above the mean and the other half will be below the mean.

</opt>

</choice>

</exercise>

<exercise id="7" title="Normal distribution exercise 2">

Let's investigate the data further. In the box below we will input the scores of the 6 nurses included in the sample into the dataset and then create a plot with the area between the mean and 1 standard deviation above and below the mean shaded in red. 

<qu>First, we will create a 'dataset' by combining the two variables 'Nurse' and "Score". Then you can plot the data with 'Nurse' on the x-axis and 'Score' on the y-axis.</qu>

<codeblock id="08_03">

</codeblock>

<qu>Using the standard deviation and the rule described earlier, we now have the tools to answer another important question: how probable it is to find a nurse with lower ratings of burnout than you?</qu>

<center>
<img src="/General_empirical.jpg"/>
<img src="/Empirical_example.png"/>
</center>

Fortunately, your burnout score happens to be almost exactly 1 standard deviation below the mean, so this makes it easy to assess the probability of a nurse scoring lower than you. Remember - 68% of scores will fall within one standard deviation of the mean, leaving a remaining 32%. Scores around a normal distribution are symmetrical, so half of the remaining 32% will be above the mean and half will be below. So if your score was exactly 1 standard deviation below the mean, we can conclude that approximately 16% of nurses will score lower than you for burnout. In other words, it would be common to find nurses who rated their levels of burnout higher than you, but somewhat less likely to observe nurses scoring lower than you.

<qu>Now that we have developed an understanding of probability and how it relates to the normal distribution, we can move on to finding out how these concepts are used in statistical inference - a core principle of quantitative research!</qu>

</exercise>

<exercise id="8" title="Sampling Distributions" type="slides">

<iframe src="https://player.vimeo.com/video/367456610" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

<qu>Animation from @dcossyleon https://github.com/tinystats/teacups-giraffes-and-statistics</qu>

</exercise>

<exercise id="9" title="Sampling Distributions Exercise">

In the code block below, you will test the relationship between sampling distribution and sample size. The `plot_hist()` function will plot a sampling distribution made up of 1000 samples, with each sample containing N (number of) observations. Try setting N to three different values anywhere in the range of 10 to 1000 (eg 15, 150 and 450). What do the resulting sampling distributions looks like? See if you can confirm for yourself that the larger the sample size (i.e. N), the less dispersed (i.e. spread out) the sampling distribution.

<codeblock id="08_04">
There's no wrong answer here. Just replace the dotted lines with different numbers to see how the sampling distribution will vary depending on the sample size. 
</codeblock>

<qu>In the next video, we progress to finding out how to summarize the **spread** of the sampling distribution with a single value and why this information is very useful for statistical inference (Hint: it has something to do with standard deviation).</qu>

</exercise>

<exercise id="10" title="Confidence Intervals" type="slides">

<iframe src="https://player.vimeo.com/video/367459265" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

<qu>Image from @dcossyleon https://github.com/tinystats/teacups-giraffes-and-statistics</qu>

<exercise id="11" title="Confidence Intervals Exercise">

Let's think back to one of the previous videos where we drew a hypothetical sample of 50 nurses and got them to rate their 'leadership' abilities on a scale that ranged from 0 to 15. Say we conducted this study again at a different hospital and got another 50 nurses to score their leadership abilities. In this sample, the mean was 5 and standard deviation was 4. But remember, this is just the average from the *sample*. In quantitative research we are interested in making generalizations from samples about populations. So what I'd like you to do is construct 95% confidence intervals for the scores from this sample by replacing the dotted lines in the code below with the correct elements of the formula just shown in the video. Hint: the SEM has been calculated in one of the lines of code - this will need to be used in your formula for calculating the upper and lower confidence intervals.

<codeblock id="08_05">

The formula for calcluating confidence intervals is the mean plus or minus 2 standard errors of the mean (SEM)

</codeblock>

<qu>Next up we move on to the principles of hypothesis testing.</qu>

</exercise>

<exercise id="12" title="Hypothesis testing" type="slides">

<iframe src="https://player.vimeo.com/video/367461348" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="13" title="Null distribution" type="slides">

<iframe src="https://player.vimeo.com/video/367466943" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>


<exercise id="14" title="Interpreting a p-value" type="slides">

<iframe src="https://player.vimeo.com/video/367471972" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="15" title="Stating null and alternative hypotheses">

Let's use some real data to practice. I have uploaded a dataset called `data`. It contains one variable with ratings of pain from a sample of heart transplant recipients. Another variable in the dataset, called `depressed` is a dichotomous variable that indicates if the participant was classified as clinically depressed based upon a diagnostic interview with a psychologist that was conducted at the same time the participant completed the quality of life instrument. We are interested in determining if being depressed is associated with pain scores in heart transplant recipients. Your first task is to select the appropriate alternative for the null hypothesis that there is no difference in pain scores between depressed and non-depressed heart transplant recipients, otherwise expressed as:

<center>

<strong>H<sub>0</sub>: mean(depressed) - mean(not depressed) = 0</strong>

</center>

<choice>

<opt text="H<sub>1</sub>: mean(depressed) - mean(not depressed) < 0">

The null hypothesis was not directional.

</opt>

<opt text="H<sub>1</sub>: mean(depressed) - mean(not depressed) ≠ 0" correct="TRUE">


</opt>

<opt text="H<sub>1</sub>: mean(depressed) - mean(not depressed) > 0" >

The null hypothesis was not directional.

</opt>

</choice>


<qu>Now that we've got our null and alternative hypotheses confirmed. Let's test them!</qu>

</exercise>

<exercise id="16" title="Hypothesis testing exercise">


The instrument used to measure pain in this study was the *Short Form-36 Health Survey*. This scale comprises several different subscales, one of which is for *Bodily Pain*, and the variable for this subscale is named `BP` in the dataset. Pain scores in this subscale can range from 0-100 with lower scores indicating worse pain. As a reminder, the variable that contains information about depression status is named `depressed`. 

Your task is to insert the variable names of the *outcome* and *predictor* variables from our null hypothesis in the code block below to:

1. Find out the mean difference in 'Bodily Pain' scores between depressed and non-depressed heart transplant recipients **in our sample**;

1. Visualise a null distribution of differences in mean 'Bodily Pain' scores where there is *no* association between depression and pain;

1. Calculate a p-value for the mean difference between groups **from our sample**.

(Don't be alarmed by all the code - all you have to do is replace the dotted lines for the outcome and predictor variables we are interested in. Some students may be interested in how statistical analyses are undertaken, so thought I'd leave in some of the code🤓)

<codeblock id="08_06">

The specify formula should take the form of Outcome ~ Predictor. Replace the dotted lines with the outcome and the predictor variables we want to explore.  The outcome variable should be numerical and the predictor should be dichotomous (i.e. categorical).

</codeblock>


Based on what you know about null distributions and hypothesis testing, considering what you have found in the plot above, what should we conclude about the null hypothesis?


<choice>

<opt text="That we should accept the null hypothesis that there is no difference in pain scores between depressed and non-depressed heart transplant recipients." >

By looking at this plot, we can see that the probability of observing an event as or more extreme than the mean difference in pain score in our sample, assuming the null hypothesis is true, is quite low (0.028). This is lower than the traditional 'threshold' for statistical significance.

</opt>

<opt text="That we should reject the null hypothesis that there is no difference in pain scores between depressed and non-depressed heart transplant recipients." correct="TRUE">

By looking at this plot, we can see that the probability of observing an event as or more extreme than the mean difference in pain score in our sample, assuming the null hypothesis is true, is quite low (0.028).

</opt>

</choice>

</exercise>

<exercise id="17" title="Uncertainty"> type="slides"

<iframe src="https://player.vimeo.com/video/367479379" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>


<exercise id="18" title="Uncertainty exercise">

In the last exercise we calculated the p-value for the mean difference in pain score between depressed and non-depressed heart transplant recipients. We concluded that we should reject the null hypothesis that there was *no difference* between groups. But what is the mean difference likely to be? Let's find out by calculating confidence intervals.

<qu>
The code below will produce a plot to visualize the confidence intervals. For a bit of fun, enter the colours you want the dots and the shading of confidence intervals tin the plot o be, then press submit. Eg. "red", "yellow", "green" etc
</qu>


<codeblock id="08_07">

Write in any colour you want the dots and shading of confidence intervals to be. Eg. "red", "yellow", "green".

</codeblock>


Considering the information presented in the plot above, which of the following statements is true?


<choice>

<opt text="We are ninety five percent confident that, in the population, depressed heart transplant recipients' pain score is between 1 point lower to 44 points lower than non-depressed heart transplant recipients." correct="TRUE">


</opt>

<opt text="There is a 95% probability that, in the population, depressed heart transplant recipients pain score is between 1 point lower to 44 points lower than non-depressed heart transplant recipients.">

The difference in terminology is subtle, but 95% confidence intervals do not mean there is a 95% probability. Technically, if we were to repeat the same study an infinte number of times in the exact same way and calculate confidence intervals each time, 95% of the time would the interval contain the 'true' mean from the population. That's why we say 95% 'confident'.


</opt>

</choice>


</exercise>

<exercise id="19" title="Clinical significance"> type="slides"

<iframe src="https://player.vimeo.com/video/367479606" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>


</exercise>

<exercise id="20" title="Common effect estimates">

<qu> Difference in means is a type of **effect estimate**</qu>


Up to now I've focused these lessons about statistical inference on the example of calculating a difference in the mean scores between two groups. A difference in means is one type of effect estimate. Although this is a common effect estimate you will encounter when reading and appraising quantitative research studies, there are lots and lots of different statistical tests that we can use to produce different effect estimates. I do want to introduce you to some of the other common ones, but first want to highlight that the principles we've already learned about p-values, null hypotheses and confidence intervals, by and large all still apply regardless of the particular type of statistical test used and effect estimate that gets reported in a study. So it's not really important for you to know whether or not the researcher has chosen the exact right type of statistical test, but it is important that you can judge the appropriateness of the conclusions that were drawn from the analyses that were undertaken. In most cases, the researchers interpretations are drawn from the statistical signficance of the effect estimate, or in other words the p value, as well as hopefully the uncertainty associated with the effect estimate, which is of course the range of its confidence interval. 

We will cover these common effect estimates in the next sections:

- Beta coefficient (regression)
- Odds ratio
- Absolute risk reduction
- Relative risk ratio

We will tackle the beta coefficient first, because it is the effect estimate calculated by a very common type of statistical test, called linear regression.

</exercise>

<exercise id="21" title="Regression coefficients"> type="slides"

<iframe src="https://player.vimeo.com/video/367483210" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="22" title="Confidence intervals for regression coefficients">

Here's the table from the video that displays the results of the regression model. 

<img src="/regression_table.png"/>


<qu>Choose which interpretation of the 95% confidence intervals is correct.</qu>

<choice>


<opt text="We are 95% confident that with each unit increase in PHQ-9 score, heart transplant recipients' quality of life score will increase by as much as 2.3 points or as little as 0.5 points.">

Both the upper and lower 95% confidence intervals are negative, meaning that with each unit increase in the predictor variable (PHQ-9), there will be a corresponding decrease in the outcome variable (quality of life).

</opt>

<opt text="We are 95% confident that with each unit increase in PHQ-9 score, heart transplant recipients' quality of life score will decrease by as much as 2.3 points or as little as 0.5 points." correct="TRUE">

Well done

</opt>


</choice>




</exercise>

<exercise id="23" title="Odds ratio"> type="slides"

<iframe src="https://player.vimeo.com/video/367486284" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="24" title="Absolute and relative risk"> type="slides"

<iframe src="https://player.vimeo.com/video/367487571" width="100%" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

</exercise>

<exercise id="25" title="Final note">

Hopefully this series of videos and exercises has helped to make the process of statistical inference a little more transparent to you. Part of the reason why 'p-values' get a bad name is that they are misunderstood. Most inferential methods can be 'lumped' into one of two paradigms - either using mathematical approximations or computational approaches. Inference using mathematical approximations relies on some concepts that you may have heard previously but not really understood - things like 'Student t tests' and t-distributions etc. In this series of videos I used a different 'paradigm' that can be referred to as 'computational' statistics to demonstrate to you important concepts about statistical inference. In most circumstances the two different approaches will provide similar results. However, the computational method tends to be a little bit more transparent so that we can understand better what that p-value actually means. 

**tl;dr** 

Don't be alarmed if you go to the textbook and start seeing all these things about needing to look up critical values for t-distributions! You don't need to know that.

</exercise>

<exercise id="26" title="Reading">

**Relevant chapters on statistics from your text for your reference (not required readinng)**

Gray, J.R., Grove, S.K. & Sutherland, S.  (2017). The Practice of Nursing Research (8th ed.)
- Chapter 21: Introduction to Statistical Analysis
- Chapter 22: Using Statistics to Describe Variables
- Chapter 23: Using Statistics to Examine Relationships
- Chapter 24: Using Statistics to Predict
- Chapter 25: Using Statistics to Determine Differences

</exercise>

<exercise id="27" title="Discussion">


<a target="_parent" href="https://q.utoronto.ca/courses/113018/discussion_topics/344139">Link to discussions on Quercus</a>

<qu>Note: If you are viewing this on the 'Student' mobile app, it is better to navigate back to the discussion section through the app rather than clicking on the link above.</qu>

</exercise>