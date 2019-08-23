---
title: 'Week 8: Statistical Testing in Research and Critical Appraisal'
description:
  'Introduction to understanding statistical analysis in quantitative research.'
prev: null
next: null
type: chapter
id: 9
---

<exercise id="1" title="Introduction">
stats_intro.Rmd
</exercise>

<exercise id="2" title="Binomial distributions">

<codeblock id="08_01">

Enter the number of coin flips you want to simulate in the first argument and the probability of it being heads (as a proportion - eg 0.5 for 50% probability) as the third argument.


</codeblock>

</exercise>

<exercise id="3" title="Density and Cumulative Density">
stats_density.Rmd
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

<exercise id="4" title="Normal distribution">
stats_normal.Rmd
</exercise>

<exercise id="5" title="Normal distribution exercise 1">
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

<exercise id="6" title="Normal distribution exercise 2">

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

<qu>Now that we have developed an understanding of probability and how it relates to the normal distribution, we can move on to finding out how these concepts are used in statistical inference - the core foundation of quantitative research!</qu>

</exercise>

<exercise id="7" title="Normal distribution">
stats_ci.Rmd
</exercise>

<exercise id="23" title="Reading">

**Relevant chapters on statistics from your text for your reference**

Gray, J.R., Grove, S.K. & Sutherland, S.  (2017). The Practice of Nursing Research (8th ed.)
- Chapter 21: Introduction to Statistical Analysis
- Chapter 22: Using Statistics to Describe Variables
- Chapter 23: Using Statistics to Examine Relationships
- Chapter 24: Using Statistics to Predict
- Chapter 25: Using Statistics to Determine Differences

</exercise>

<exercise id="24" title="Discussion">

This week we continue with our critical appraisal of the Curtis & Glacken (2014) article.

Each student is asked to respond to one of the following questions. Some of you may discuss the same question, but please ensure all questions are addressed.

- Were the data analysis procedures clearly described and appropriate for the type of data collected?
- Were the results presented in a clear and understandable format? (e.g., tables, etc).
- What were the study results? Did the results address the study purpose and research questions?
- What does this study contribute to our knowledge? How does it extend or connect with what we already know?
- How are the results relevant to practice in your context?
- Were the identified implications for practice appropriate, based on the study findings?
- Did the study have weaknesses not identified by the researcher?

<a target="_parent" href="https://q.utoronto.ca/courses/113018/discussion_topics/326843">Link to discussions on Quercus</a>

`Note: If you are viewing this on the 'Student' mobile app, it is better to navigate back to the discussion section through the app rather than clicking on the link above.`

<iframe src="https://www.aaronconway.info/web/viewer.html?file=%2FNUR1027/curtis.pdf" width="100%" height="1050px"></iframe>

</exercise>