# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Project 3: Liquor Sales + Linear Regression

### Overview
This week we learned we learned how to use scikit-learn to run linear regression models, how Goals & Business Objectives translate to Model Fit, and also how to optimize models using cross-validation. We worked a lot with housing data and predicting prices. Now we're going to use these skills to dig into a rich set of data!

The state of Iowa provides many data sets on their website, including [this dataset](https://www.dropbox.com/sh/pf5n5sgfgiri3i8/AACkaMeL_i_WgZ00rpxOOcysa?dl=0) which contains transactions for all stores that have a class E liquor license. You can choose one of the following two scenarios.

NOTE: Some of you mentioned that this dataset is too big for you to run the python code on. In this case, feel free to use [this 10% dataset version of Iowa liquor sales](https://drive.google.com/file/d/0Bx2SHQGVqWaseDB4QU9ZSVFDY2M/view?usp=sharing). You may want to use it anyway to test your code since it will be faster.

#### Scenario 1: State tax board

You are a data scientist in residence at the Iowa State tax board. The Iowa State legislature is considering changes in the liquor tax rates and wants a report of current liquor sales by county and projections for the rest of the year.

**Goal for Scenario #1:** Your task is as follows:

* Calculate the yearly liquor sales for each score using the provided data. You can add up the transactions for each year, and store sales in 2015 specifically will be used later as your target variable.
* Use the data from 2015 to make a linear model using as many variables as you find useful to predict the yearly sales of each store. You must use the sales from Jan to March per store as one of your variables.
* Use your model for 2015 to estimate total sales for each store in 2016, extrapolating from the sales so far for Jan-March of 2016.
* Report your findings, including any projected increase or decrease in total sales (over the entire state) for the tax committee of the Iowa legislature.
* Use cross-validation to check how your model predicts to held out data compared to the model metrics on the full dataset.
* _Challenging Bonus_: We did not cover the topics of regularization for linear regression this week, but those feeling bold can try to use and understand regularizing linear regressions. This will require self-guided research/reading and scikit-learn functions that we have not gone over in class! Use cross-validation to tune the regularization parameter that maximizes R^2 on your holdout sets for the Ridge regression and the Lasso Regression. Do the regularized models perform better than the non-regularized model? Which regularized model performs better? What is the Ridge regression doing? What is the Lasso doing.


#### Scenario 2: Market research for new store locations

A liquor store owner in Iowa is looking to expand to new locations and has hired you to investigate the market data for potential new locations. The business owner is interested in the details of the best model you can fit to the data so that his team can evaluate potential locations for a new storefront.

**Goal for Scenario #2:** Your task is to:

* Build models of total sales based on location, price per bottle, total bottles sold. You may find it useful to build models for each county, zip code, or city.
* Provide a table of the best performing stores by location type of your choice (city, county, or zip code) and the predictions of your model(s).
* Based on your models and the table of data, recommend some general locations to the business owner, taking into account model performance. Validate your model's performance and ability to predict future sales using cross-validation.
* _Bonus_: Recommend targets for volume sold and price per bottle!

---

###  Requirements

Using a provided dataset, create a Linear Regression model and an executive summary write up based on your chosen scenario.

Your work must:
**Identify the problem**
- Write a high quality problem statement
- Describe the goals of your study and criteria for success

**Acquire the data**
- Obtain the data [here](https://www.dropbox.com/sh/pf5n5sgfgiri3i8/AACkaMeL_i_WgZ00rpxOOcysa?dl=0) -- it's from [Iowa.gov](Iowa.gov), filtered and reduced a bit
- There is a further reduced version that is 10% of the version above [here](https://drive.google.com/file/d/0Bx2SHQGVqWaseDB4QU9ZSVFDY2M/view?usp=sharing)

**Explore the data**
- Import data using the Pandas Library
- Perform exploratory analysis methods with visualization and statistical analysis
- State the risks and assumptions of your data

**Mine the data**
- Create necessary derived columns from the data
- Format, clean, slice, and combine the data in Python

**Refine the data**
- Determine outliers, skew distribution of important variables (if any)
- Determine correlations / causations in the data
- Validate findings using statistical analysis (p-values, confidence intervals) as applicable

**Build a data model**
- Complete linear regressions using scikit-learn or statsmodels and interpret your findings
- Calculate and plot predicted probabilities and/or present tables of results
- Describe the bias-variance tradeoff of your model and errors metrics
- Evaluate model fit by using loss functions, including mean absolute error, mean squared error, and root mean squared error, or r-squared

**Present the results**
- Create a Jupyter writeup hosted on GitHub that provides a dataset overview with visualizations, statistical analysis, data cleaning methodologies, and models
- Create a writeup on the interpretation of findings including an executive summary with conclusions and next steps

***Bonus!:***
- Handle outliers, use regularization (Ridge & Lasso regressions)
- Brainstorm ways to improve your analysis; for example:
 - Add additional breakdowns and models, e.g. by month.
 - Recommend additional data that might improve your models
 - Can you think of other uses for the dataset? E.g healthcare / disease estimates
- Create a blog post of at least 500 words (and 1-2 graphics!) describing your data, analysis, and approach. Link to it in your Jupyter notebook.
 - **Pro Tip:** Try converting your Jupyter notebook to HTML to create an easy blog post draft!

### Necessary Deliverables / Submission

- Materials must be in a clearly labeled Jupyter notebook that satisfies project requirements:
- Materials must be submitted via a Github PR to the instructor's repo.
- Materials must be submitted by the end of Week 3.

---

### Starter code

The [starter code](./starter-code/) has a loose outline for you to follow to explore the data and build your models. Make sure to consider strategies for your specific scenario. You will also address several of the items in Labs 3.3 and 3.4.

> Instructors: Solution Code will basically combine the existing solution code for [Lab 3.3](./curriculum/04-lessons/week-03/3.3-lab/code/solution-code/3.3-Data-Workflow-Lab-1-Solution.ipynb) and [Lab 3.4](./curriculum/04-lessons/week-03/3.4-lab/code/solution-code/3.4-Data-Workflow-Lab-2-Solutions.ipynb), as plugged into the starter code for [Project 3](starter-code/Project 3 Starter Code.ipynb), with some
simplifications and augmentations from Lessons 5.1 and 5.2 (about stakeholder analysis).

> Since both scenarios are open ended, there are many valid approaches.

### Dataset

[This dataset](https://www.dropbox.com/sh/pf5n5sgfgiri3i8/AACkaMeL_i_WgZ00rpxOOcysa?dl=0) contains transactions for all stores that have a class E liquor license in the state of Iowa. It has been significantly reduced from the original file but you'll need to reduce and clean it further.

[This dataset](https://drive.google.com/file/d/0Bx2SHQGVqWaseDB4QU9ZSVFDY2M/view?usp=sharing) contains the same information as the data above, but just 10% of the original sample.

> Students interested in viewing the original, unreduced file can compare the reduced Project version with the [original full version, found here](http://marcharper.codes/Iowa_Liquor_Sales-all.zip). In fact, Iowa provides over 2gb of data stretching further back in time! This can be a useful tool for helping students understand the need to frame and filter their data.

---

### Suggested Ways to Get Started

**Tips for both scenarios:**
1. Likely you will find it useful to reduce the data set with pandas before fitting models. You may want to make a new table with the following data for each store:
 * The vendor name
 * The location data (zip code, county, city)
 * The total sales for the year
 * The total sales for each month (or at least for Jan-March for the first scenario)
 * The total volume sold
 * The total number of bottles sold
 * The average price per bottle (perhaps useful for distinguishing store types)

2. We're using linear regression for our models. Find the best model you can, but don't fret if you cannot get a really good model. We'll learn techniques later that will help improve your analysis, such as _classifying store types_. For now do the best you can with the tools that you have.

3. Take advantage of pandas as much as possible -- the `groupby`, `summation`, and other features of DataFrames can make computing the necessary summary data much easier. This is a great time to practice what you learned in Week 2!

4. Take care in the presentation of your results. Your audience is likely non-technical, so explain your findings in accessible language.

**General suggestions:**
- Write pseudocode before you write actual code. Thinking through the logic of something helps.  
- Read the docs for whatever technologies you use. Most of the time, there is a tutorial that you can follow, but not always, and learning to read documentation is crucial to your success!
- Document **everything**.  

### Useful Resources
- [Documentation for SKLearn](http://scikit-learn.org/stable/user_guide.html)
- [What is regularization?](https://www.quora.com/What-is-regularization-in-machine-learning)

---

### Project Feedback + Evaluation

[Attached here is a complete rubric for this project.](./project-03-rubric.md)

Your instructors will score each of your technical requirements using the scale below:

    Score | Expectations
    ----- | ------------
    **0** | _Incomplete._
    **1** | _Does not meet expectations._
    **2** | _Meets expectations, good job!_
    **3** | _Exceeds expectations, you wonderful creature, you!_

 This will serve as a helpful overall gauge of whether you met the project goals, but __the more important scores are the individual ones__ above, which can help you identify where to focus your efforts for the next project!
