---
title: 'Week 9: Quantitative descriptive'
description:
  'Important concepts regarding the purpose and major approaches for quantitative description.'
prev: null
next: null
type: chapter
id: 10
---

<exercise id="1" title="Introduction">

## Descriptive studies

Descriptive studies seek to describe constructs of interest with no attempt to manipulate the conditions or events. Data for these studies is gathered through a number of ways including direct observations, questionnaires, and retrospective or prospective audit of available data. Descriptive studies can often be used as a precursor to other quantitative research, like randomized controlled trials or non-randomized studies of interventions. In this chapter, we will focus on two different types of descriptive studies, which are commonly used in nursing and healthcare:

- Surveys
- Correlational studies


</exercise>


<exercise id="2" title="Surveys" >

A survey is a common type of observational design that enables collection of information about the characteristics of particular individuals, groups, institutions or situations, or about the frequency of a phenomenon's occurrence, particularly when little is known about it. There are both advantages and disadvantages to consider when undertaking survey research, which are outlined below. We will also cover some important aspects about the design of surveys that are vital to keep in mind when appraising the results of studies that employ a survey design. These include the sampling strategy, how variables were defined and measured and how the data were analyzed and reported. 


Advantages:

- The research produces data based on real-world observations (empirical data).

- The breadth of coverage of many people or events means that it is more likely than some other approaches to obtain data based from a representative sample, and can therefore be generalizable to a population.

- Surveys can produce a large amount of data in a short time for a fairly low cost. 

Disadvantages:
- The significance of the data can become neglected if the researcher focuses too much on the range of coverage to the exclusion of an adequate account of the implications of those data for relevant issues, problems, or theories.

- The data that are produced are likely to lack details or depth on the topic being investigated.

- Securing a high response rate to a survey can be difficult.

<sub>
Source: <a href=https://academic.oup.com/intqhc/article/15/3/261/1856193">Good practice in the conduct and reporting of survey research</a></sub>


</exercise>


<exercise id="3" title="Sampling in surveys" >

We covered the basics of sampling for quantitative research in a previous chapter. These principles apply to studies that used survey designs. In brief, probability sampling, where the sample is randomly drawn from the population of interest, is preferred because it should (more or less) provide a sample that is representative of the population. The approach more commonly used is called convenience sampling, where anyone who meets inclusion criteria set by the researchers to define their population of interest is eligible to participate. The results of a survey undertaken using convenience sampling may not be representative of the broader population. We would call this, a form of selection bias.

The sampling strategy ultimately employed in a survey will depend on numerous factors, including how large the patient population is, how easy it is to distribute the survey to members of that population and the amount of resources that the researchers have available to conduct the study. It is prefereable that the sampling strategy balances the sometimes competing demands of gaining a large enough sample that measurements will be precise, with the additional resources and difficulty associated with using a probability sampling approach. As such, the following aspects should be considered when appraising the results of a descriptive study that used a survey design, in order to assess the risk for selection bias:

- How, where, how many times, and by whom were potential respondents contacted?
- How many people were approached and how many of those agreed to participate.
- Was information provided about how those who agreed to participate differed from those who refused, with regard to characteristics of interest in the study? For example, how were they identified, where were they approached, and what was their gender, age, and features of their illness or health care. Often times this information is not reported because it is difficult for researchers to gather data from potential respondents who did not choose to participate. Nevertheless, it is important to keep in mind that if non-respondents were systematically different to respondents, then there is the potential that the results are at high risk of selection bias. 
- What was the response rate? (i.e. the number of usable data sets as a proportion of the number of people approached)

</exercise>

<exercise id="4" title="Measurement considerations in surveys" >

The quality of the results of a survey is related to the quality of the measures used to assess the variables of interest. We covered the important aspects of reliability and validity of measurements instruments previously. This all applies to descriptive studies that use survey designs. Something important to highlight, though, is that often surveys are undertakan on topics where previously validated instruments are unavailable. In these circumstances, it is common for researchers to develop items specifically for their survey and not report on content, construct or criterion validity or to evaluate reliability. When appraising research that employed survey designs with items that have not been validated, it is important to consider the following:

- Was the scale appropriate? (e.g. if an ordered scale was used to rank the item, was there sufficient number of ranks in the scale and were the descriptors for the scale consistent with the item?)
- Were all aspects of the construct of interest captured by the item(s) used in the survey?
- Was the way the survey was distributed (online, face to face) appropriate, considering the variable of interest? (e.g. if the survey topic is of a sensitive nature, respondents may not feel comfortable reporting unless it was completely anonymous)

</exercise>


<exercise id="5" title="Missing data in surveys" >

When appraising the results of descriptive studies that use survey designs, it is vital to assess how the researchers handled missing data. It is very common to have missing data in surveys, for numerous reasons. Often, surveys are anonymous and completed by a respondent without any direct contact from a member of the research team. For example, this would include surveys distributed through online platforms. As such, there is no opportunity for the research team to inspect the completed data collection instrument (i.e. the survey) and identify missing data that the respondent may just have inadvertently skipped. 

- How much data were missing (for each variable and the survey as a whole)?
- Could there have been underlying reasons explaining the missing data, which could have biased the results?
- How did the researchers handle the missing data?
- If data were imputed (values entered in place of the missing data), was this appropriate to do?

</exercise>

<exercise id="6" title="Confidence intervals in surveys" >


The purpose of undertaking a descriptive study with a survey design is to gain information from a sample of a certain population of interest in order to gain insights about that population (not the sample). As such, the analyses reported in a research paper that a used survey design should not only include the mean or frequency and percent from the sample, but also the *confidence intervals*. Or in other words, implications for practice should be drawn with consideration of the fact that the 'true' value in the population may be as low as the lower bound of the 95% confidence interval or as high as the upper bound of the confidence interval. This is an important point to remember when appraising results from surveys. If a survey was conducted with a small sample size, it is likely that the confidence intervals will be wide. So it is a good idea to be especially wary of studies that report results of surveys that don't report confidence intervals. In the next two exercises, we'll explore this in more detail.

</exercise>

<exercise id="7" title="Confidence intervals in surveys exercise 1" >

<qu>Unfortunately, confidence intervals are not always reported in publications. For example, even in the International Journal of Nursing Studies (highest ranked journal in the field), in a survey of nursing and midwifery practice for maintenace of vascular access device patency, confidence intervals were **not reported**. The publication is presented below.</qu>

<iframe src="https://www.aaronconway.info/web/viewer.html?file=%2FNUR1027/keogh_flushing.pdf" width="100%" height="1050px"></iframe>

<br><br>


A useful exercise may be to look at the authors' main interpretations of their results and see if they would have changed had the confidence intervals been taken into consideration appropriately. One of the researchers main interpretations was that further efforts should be made to increase adherence to the recommended practice of using a 10mL syringe for flushing vascular access devices. Is this a reasonable interpretation, considering confidence intervals were not provided? Let's investigate. 

<qu>The `ci_proportion` function I have defined for you in the code chunk below will take a numerator and denominator as input and produce the lower and upper 95% confidence intervals. In place of the first dotted line, enter the number of respondents who reported using 10mL syringes for flushing (i.e. the numerator) and in place of the second dotted line, enter the sample size (i.e. denominator). These numbers are reported in Table 2 of the paper. Then press submit.</qu>

<codeblock id="09_01">

Table 2 of the paper contains the information. Enter the numerator (number of respondents who use 10mL syringes for flushing) in the first dotted line and the denominator in place of the second dotted line.

</codeblock>

Now that you know the confidence intervals, do you still agree with the researchers' interpretation that further work is required to increase nurses' adherence to guideline recommendations for flushing of peripheral intravenous cannulas to be performed using 10mL syringes?

<choice>

<opt text="No">


</opt>

<opt text="Yes" correct="TRUE">

I agree - because the sample size was quite large, the confidence intervals are narrow so we can be fairly certain that there will be lots of nurses in the population who are not currently adhering to recommendations for flushing vascular access devices.

</opt>

</choice>



</exercise>

<exercise id="8" title="Confidence intervals in surveys exercise 2" >

Although in this instance the confidence intervals were narrow, and so the researchers' interpretations that were drawn just from the sample seemed generally 'OK', this will not always be the case. Just to illustrate the point, say another group of researchers conducted a similar survey and asked a sample of just 50 nurses what type of syringe they use to perform flushing of vascular access devices. In this survey 29 of the respondents reported using 10mL syringes. Enter the information required in the codeblock below to calculate the confidence intervals for this hypothetical example.


<codeblock id="09_02">

Enter the numerator in the first dotted line (number of respondents who use 10mL syringes for flushing) and the denominator (total sample size) in place of the second dotted line.

</codeblock>

<qu>For your future reference, there are many free online calculators that you can use to calculate confidence intervals - just google it and I'm sure you'll find one you can use 😊</qu>

</exercise>

<exercise id="9" title="Correlational studies" >


A researcher uses quantitative descriptive studies with a correlational design to quantify the strength of the relationship between variables. To phrase this differently, as one variable changes, does a related change occur in the other variable? For example, a study using a correlational design was able to identify a relationship between certain job characteristics and nurses satisfaction with their role (<a href="https://bmcnurs.biomedcentral.com/articles/10.1186/s12912-017-0246-y">Giles 2017</a>). The study identified that job satisfaction was strongly positively correlated with job autonomy, role clarity, role conflict and job support. In simple terms, job satisfaction increased as job autonomy increased.

Below are some advantages and disadvantages of this type of design. 

<table>
  <tr>
    <th>Advantages</th>
    <th>Disadvantages</th>
  </tr>
  <tr>
    <td>Increased flexibility to investigate relationships among variables.</td>
    <td>Unable to determine a causal relationship between variables because of the lack of manipulation, control and randomisation.</td>
  </tr>
  <tr>
    <td>Efficient and effective method of collecting a large amount of data about an issue of interest.</td>
    <td>Random sampling not possible with pre-existing groups meaning the ability to generalise is therefore decreased</td>
  </tr>
  <tr>
    <td>Provides a framework for exploring the relationship between variables that are not able to be manipulated.</td>
    <td>Unable to manipulate the variables of interest.</td>
  </tr>
</table>

test
<qu>Correlational designs have sometimes been categorised as 'simple', 'predictive' and 'theoretical' (Gray et al., 2017). We will focus on the 'simple' correlational design. Data is collected in correlational designs either prospectively or retrospectively, without attempts to manipulate conditions by researchers.</qu>

</exercise>

<exercise id="10" title="Sampling in correlational studies" >

Just like for surveys, the risk of selection bias should be considered when appraising the results of research conducted using correlational designs. In most cases in nursing and healthcare research that has used a correlational design, the sampling strategy would have been one of 'convenience'. Another consideration is where the data collection took place. Often these types of studies are conducted at a single hospital or health service that may serve a population that is not representative of other settings. Results should ideally not be generalized outside of the context in which it was conducted. 


</exercise>

<exercise id="11" title="Measurement considerations in correlational studies" >

## Variables can be continuous or categorical

As we've established earlier, the focus of the correlational design is to examine relationships between variables. The word 'correlation' can mean different things to different people though. Most commonly in statistical terms, a correlation refers to the case when two *continuous* variables are plotted against each other and the 'correlation' between these two variables is calculated. The term in the context of correlational designs used for quantitative descriptive studies is not so restrictive. In these studies it is also common for the outcome variable to be categorical instead of continuous.  

</exercise>


<exercise id="12" title="Analysis considerations in correlational studies" >

## Confounding

In descriptive studies that use correlational designs, participants in the study have not been randomized to a particular group. This means that the groups being compared in a correlational study are likely to vary with respect to their demographic, clinical and other characteristics <a href="http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.985.8977&rep=rep1&type=pdf">(Mullner et al., 2002)</a>. For this reason, it is good practice in correlational studies to use statistical approaches to reduce the risk of bias associated with *confounding*. Doug Altman, a famous biostatistician, <a href="https://www.bmj.com/content/349/bmj.g7065.full">explains</a> confouding as:

<qu>...the situation where an apparent relationship between two things may be a result of the relationships of both to a third.</qu>


## Which confounders should be controlled?

In most correlational studies, researchers do use statistical approaches to adjust for potential confounders <a href="https://www.bmj.com/content/329/7471/883.full">(Pocock et al., 2004)</a>. *How* researchers chose the potential confounders to adjust for in their analyses is not always clear though. 

In the next exercise, I will demonstrate to the concept of confounding, using a real-world example. 

</exercise>

<exercise id="13" title="Confounding exercise" >

You may recall from our chapter on Statistics where we used the example of a study conducted to identify variables associated with hypothermia after procedures performed with sedation in a cardiac catheterisation laboratory. We used logistic regression with "Hypothermia" as the outcome variable and 'BMI' as a predictor variable. The table below shows the results of this analysis. The OR for BMI was 0.9, and we interpret that as the odds of hypothermia being decreased by 10% with each unit increase in BMI.

<img src="/or.png"></img>

This result is an example of an 'unadjusted' analysis. It is 'unadjusted' because it shows the association between the outcome and just one variable. Remember though, we didn't randomly assign participants in this study to a particular 'group', so it is likely that their demographic and clinical characteristics differed in important ways. And for this reason, we should also perform an 'adjusted' analysis, where we control for the potential confounding effects of other variables so that we can see the *independent* effect of the predictor variables on the outcome. The table below shows a whole list of other variables that we measured in the study. 

<img src="/table.png"></img>

One of those variables we also investigated previously, which was the use of propofol for sedation. By adding in this variable to the logistic regression model, we now have an estimate of the effect of BMI on hypothermia, *adjusted* for whether or not the drug propofol was used for sedation (and vice versa). It is ecouraging to see that the results were fairly stable for the BMI odds ratio estimate. It is around the same value and is still statistically significant (p <0.05). 

<img src="/or_adj.png"></img>

But from looking at the list of other variables we measured in the table above, it is clear to see that we can certainly 'control' for the effect of other potentially confounding variables in our 'adjusted' analysis to get a better etimate of the associations between patient and procedural factors with hypothermia. Remember though, it is usually not good practice to just 'throw-in' any variable into the model. There should be a good rationale for why a predictor variable may influence the outcome.  One of the most important, with an obvious rationale, would be the temperature of the room. 

<qu> In the code block below, add in the name of the variable in 'model2' that is needed to control for the effect of room temperature in our adjusted analysis.</qu>


<codeblock id="09_03">

Enter the variable name for room temperature from the table in place of the dotted line then press 'submit'.

</codeblock>

<qu> This new 'adjusted' model, demonstrates very well the concept of confounding and how not including important confounding variables in analyses of studies that use correlational design can have drastic effects on the interpretation of the results. We see that after 'controlling' for the effect of room temperature, the use of propofol for sedation was much more strongly associated with hypothermia than if this confounding variable was not included in the analysis.</qu>

</exercise>

<exercise id="14" title="Confounding exercise 2" >


If you would like to play around with the modelling a bit more to see how adding more variables may help to control confounding, feel free to add in some more variables that you think could reasonably associated with hypothermia into 'model3', making sure to combine them using '+', then press 'Run code' and view your results.


<codeblock id="09_04">

Enter the variable names you would like to add to the model then press 'submit'.

</codeblock>


</exercise>


<exercise id="15" title="Considerations for appraisal of correlational studies" >

When appraising research that employed a correlational design, it is important to consider the following:

- Was the characteristics of study participants (e.g., demographic, clinical, social) and information on potential confounders provided?
- Was unadjusted estimates and confounder-adjusted estimates and their precision (e.g., 95% confidence interval) provided? Displaying both adjusted and unadjusted analyses appropriately informs readers of the role confounders had on the results.
- Was it clear which confounders were adjusted for in the results and why they were included?
- Were potentially important confounders not included in the analysis?


</exercise>

<exercise id="16" title="Reading" >

The relevant chapters of the textbook for your reference include:

Gray, J.R., Grove, S.K. & Sutherland, S.  (2017). The Practice of Nursing Research (8th ed.) 

- Chapter 10: Descriptive research and its designs (pp. 200 – 204.) 
- Chapter 10: Correlational designs (pp. 209– 212.) 

</exercise>


<exercise id="17" title="Final notes" >

There is no discussion board this week 🙌

</exercise>
