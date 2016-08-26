# Exploratory Data Analysis

Utilizing Music 21 and matplotlib, Project Miles Ahead will conduct Exploratory Data Analysis and robust Data Visualization to explore the music created by the model.  

By conducting the same comparison on music created by legendary jazz pianist, Bill Evans, this project seeks insight in to the "humanity" of the computer generated music referred to as "Miles".

###Executive Summary

The EDA in this notebook seems to hint at a level of "humanity" exhibited in the Miles solo piece as compared to the legendary Bill Evans.

We see similar patterns in rhythmic patterns, statistical clustering, and note selection/patterns in play. It is a small sample size, but it certainly stands to prove the validity of neural network methodology in machine learning.

I would like to increase the sample size used in our initial database that drove the generation of the Miles piece and perform more EDA in the future on both sides of the equation to further explore the hypothosis that a computer can make "human" sounding music.

###Process

Run `parser.py` in command line to extract the following:

notes: Note/Rest, Octave, Len, Offset:

![notes](https://github.com/Mithers/Portfolio/blob/master/Project%20Miles%20Ahead/Assets/notes.png)

chords: FullName, CommonName, Len, Offset:

![chords](https://github.com/Mithers/Portfolio/blob/master/Project%20Miles%20Ahead/Assets/chords.png)

This allows you to put that information in to a pandas data frame and perform analysis.

##See jupyter notebook entitled "EDA.ipynb" for actual analysis.