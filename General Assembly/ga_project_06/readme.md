# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Project 6: APIs + Random Forests

### Overview

This week, we learned about ensemble methods and API's. Now's we're going to put these skills, as well as some of the natural language processing skills you learned about in Week 4 to the test. You've been hired by Netflix to examine what factors lead to certain ratings on movies. Given that Netflix does not currently store this type of data, your boss has suggested that you collect ratings and reviews data from IMDB. Netflix is no stranger to machine learning, however:

- Netflix uses random forests and decision trees to predict what types of movies an individual user may like.
- Using unsupervised learning techniques, they are able to continually update suggestions, listings, and other features of it's user interface.
- Netflix, however, hasn't focused on collecting data on the top movies of all time, and would like to add some of them to their offerings based on popularity and other factors.

**Point:** Your boss isn't sure where to start on this project, so your task is to collect the data, properly store it for reference, and construct a random forest to understand what factors contribute to ratings.


#### Project Summary
In this project, we're going to be using two different datasets: one will be directly pulled from an IMDB API, and other will be scraping from various IMDB pages using information previously collected through the API.

You will assist Netflix by:

- Accessing IMDB top 250 movies list and scraping related data to collect information on the most popular movies of all time
- Storing and joining the data in a Postgres database so that your boss and yourself may access it
- Using your ensemble methods skills to create a random forest model

When you've finished your analysis, the Netflix would like a report detailing your findings, with recommendations as to next steps.

Here are some questions to keep in mind:

- What factors are the most direct predictors of rating?  
- How might viewer sentiment play into ratings and how should we measure it?

For more instructions, follow the questions included in the starter code.

**Goal**: Completed Jupyter notebook that includes modeling using a random forest and an interpretation of your findings.

---

### Requirements

- Perform the following tasks:
 - Write a problem statement & describe the goals of your study to be included in the final report
 - Pull the data from the [IMDB API](http://www.omdbapi.com/)
 - Scrape related IMDB data -- or use API from above
 - Join API & additional data in local Postgres
 - Use natural language processing to understand the sentiments of users reviewing the movies
 - Mine & refine your data
 - Construct bagging and boosting ensemble models
 - Construct elastic net models
 - Perform gridsearch and validation on models
 - Present the results of your findings in a formal report to Netflix, including:
  - a problem statement,
  - summary statistics of the various factors (year, number of ratings, etc.),
  - your random forest model,
  - and your recommendations for next steps!

- ***Bonus:***
 - Do some PCA analysis
 - Scrape your data manually using the Python package [BeautifulSoup](https://www.crummy.com/software/BeautifulSoup/bs4/doc/#).
 - Create a blog post from your notebook of at least 500 words (and 1-2 graphics!) that describes your project and includes your analysis, findings, and recommendations. Link to it in your Jupyter notebook.
 
 ***SUPER Bonus:***
This extended bonus question is deliberately impossible! While we haven't covered this during our lessons this week, consider how you might approach these problems from a practical level and give it your best shot :)

 - Do a cluster analysis using one of the clustering methods we've covered
  - Encode all categorical values as binary
  - Evaluate solely based on quality metrics such as SSE/inertia and sillhouette or others
  - Describe your findings based on the predicted clusters  (How well did it do?  What's good or bad?  How would you improve this? Does any of it make sense?)

### Necessary Deliverables / Submission

- Materials must be in a clearly labeled Jupyter notebook, including:
- Problem statement, goals, and technical data.
- Materials must be submitted via a Github PR to the instructor's repo.
- Materials must be submitted by the end of Week 6.

---

### Starter code

[Open the starter code instructions in the Jupyter notebook provided.](./starter-code/) We will use Scikit-Learn, matplotlib, and numpy for our learning algorithms.

> Instructors: [Sample solution code is provided here](./solution-code/)

### Dataset
You will need to pull data from the Netflix API, while also scraping related sentiment data from the [IMDB.com](www.imdb.com) website. Once you have your datasets, you will need to join them in a local PostgreSQL database.

> Instructors: [Sample datasets for all three steps are provided for you here](./assets/data/)

---

### Suggested Ways to Get Started

- Read in your dataset
- Write pseudocode before you write actual code. Thinking through the logic of something helps.
- Read the docs for whatever technologies you use. Most of the time, there is a tutorial that you can follow, but not always, and learning to read documentation is crucial to your success!
- Document **everything**.
- Look up sample executive summaries online.

### Useful Resources

- [Documentation for BeautifulSoup](https://www.crummy.com/software/BeautifulSoup/bs4/doc/)
- [Tutorial for integrating PostgreSQl with Python](https://wiki.postgresql.org/wiki/Psycopg2_Tutorial)

---

### Project Feedback + Evaluation

[Attached here is a complete rubric for this project.](./project-06-rubric.md)

Your instructors will score each of your technical requirements using the scale below:

    Score | Expectations
    ----- | ------------
    **0** | _Incomplete._
    **1** | _Does not meet expectations._
    **2** | _Meets expectations, good job!_
    **3** | _Exceeds expectations, you wonderful creature, you!_

 This will serve as a helpful overall gauge of whether you met the project goals, but __the more important scores are the individual ones__ above, which can help you identify where to focus your efforts for the next project!
