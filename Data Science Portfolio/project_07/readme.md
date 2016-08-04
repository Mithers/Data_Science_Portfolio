# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Project 7: Airport Delays + Cluster Analysis

### Description

This week, we learned about clustering and how to prepare your data for clustering, as well as useful ways for storing and accessing your data. Now, we're going to apply each of the skills, as well as skills you've learned in previous courses, to successfully store, understand, prepare, and model your data using unsupervised learning methods.

You've been hired by the FAA as a consultant to analyze the operations of major airports around the country. The FAA wants to cut down on delays nationwide, and the most important part of this task is understanding the characteristics and groupings of airports based on a dataset of departure and operational delays.

- A certain degree of delay is expected in airport operations, however the FAA is noticing significant delays with certain airports
- When a flight takes off, it's departure delay is recorded in minutes, as well as operational data relating to this delay
- At the end of the year, this data is averaged out for each airport. Your datasets have these averaged for a 10 year range between 2004 and 2014
- Over this 10 year range, some delay times have not improved or have worsened.

**Point:** Your task is to understand the distribution, characteristics, and components of individual airports operations that are leading to these delays.

#### Project Summary

In this project, we're going to be using three different datasets related to airport operations. These include a dataset detailing the arrival and departure delays/diversions by airport, a dataset that provides metrics related to arrivals and departures for each airport, and a dataset that details names and characteristics for each airport code.

You will help the FAA:

- Organize and store their data so that they can easily understand it after your consulting work is done
- Mine and refine the data to uncover its basic attributes and characteristics
- Use your skills with PCA to uncover the core components of operations related to delays.
- Transfer your database to AWS so that FAA staff around the country can access your data and findings

When you've finished your analysis, the FAA would like a report detailing your findings, with recommendations as to which airports and operational characteristics they should target to decrease delays.

Here are some questions to keep in mind:

- What operational factors are most directly correlated to delays?
- Take a look at airports groupings - are there any relationships by region? Size?

For more instructions, follow the questions included in the starter code.

**Goal**: Completed Jupyter notebook that includes modeling using principal component analysis and an interpretation of your findings.

---

### Requirements

- Complete all of the tasks below:
 - Write a problem statement & describe the goals of your study to be included in the final report
 - Create a database to store your data; the FAA has dictated that you use PostgreSQL
 - Conduct Exploratory Data Analysis to understand the attributes of our data; include your EDA findings in your final report to the FAA
 - Mine & refine your data
 - Conduct a PCA to discover the principal components behind departure delays
 - Present the results of your findings in a formal report to the FAA, including the problem statement, summary statistics of the takeoff delays and operational delays, your PCA analysis detailing the principal components related to relays, and a case study on one specific airport that best illustrates your findings to FAA officials.


- ***Bonus:***
 - Plot your PCA analysis on a 3-dimensional graph
 - Copy your dataset and findings to your own AWS database for convenient FAA access.
 - Create a blog post from your notebook of at least 500 words (and 1-2 graphics!) that describes your project and includes your analysis, findings, and recommendations. Link to it in your Jupyter notebook.


### Necessary Deliverables / Submission

- Materials must be in a clearly labeled Jupyter notebook, including:
 - Problem statement, goals, technical data, and link to AWS database (if applicable)
- Materials must be submitted via a Github PR to the instructor's repo.
- Materials must be submitted by the end of Week 7.

---

### Starter Code

[Open the starter code instructions in a Jupyter notebook.](./starter-code/) We will be using Scikit-Learn, matplotlib, and numpy for our unsupervised learning algorithms.

> Instructors: [Solution code is provided for you here](./solution-code/)

### Dataset

We'll be utilizing three datasets in this project:

- [airport_operations.csv](./assets/Airport_operations.csv)
- [airport_cancellations.csv](./assets/airport_cancellations.csv)
- [airports.csv](./airport_cancellations.csv)

Our goal is to use this data to uncover patterns in flight cancellations!

#### AWS Bonus

Here are some instructions

---

### Suggested Ways to Get Started**

- Read in your dataset
- Write pseudocode before you write actual code. Thinking through the logic of something helps.  
- Read the docs for whatever technologies you use. Most of the time, there is a tutorial that you can follow, but not always, and learning to read documentation is crucial to your success!
- Document **everything**.
- Look up sample executive summaries online.

### Useful Resources

- [Introduction to AWS and Python](https://aws.amazon.com/articles/3998)
- [Quora discussion on resources for writing consulting reports](https://www.quora.com/Are-there-any-management-consulting-report-templates-available)

---

### Project Feedback + Evaluation

[Attached here is a complete rubric for this project.](./project-07-rubric.md)

Your instructors will score each of your technical requirements using the scale below:

    Score | Expectations
    ----- | ------------
    **0** | _Incomplete._
    **1** | _Does not meet expectations._
    **2** | _Meets expectations, good job!_
    **3** | _Exceeds expectations, you wonderful creature, you!_

 This will serve as a helpful overall gauge of whether you met the project goals, but __the more important scores are the individual ones__ above, which can help you identify where to focus your efforts for the next project!
