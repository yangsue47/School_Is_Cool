# Final Project: Predicting Growth in Test Scores - Segment Two

# Communication protocols:
The project team consisted of Pa Lor, Eric Sanders and Sue Yang. The team's primary communication method was through a private Slack message. After each group meeting, notes were shared with project assignments and responsibilities to make sure everyone left the meeting with a clear understanding of their action items and tasks to complete before the next meeting. The team established a desire to use office hours before class to discuss any questions and items that needed cross consultation and discussion among team members. A standing Saturday meeting time was also established for the team to utilize as needed to finish tasks for submission.

# Resources
The tools used for our project:
* Python
* PostgreSQL
* Tableau
* VS Code
* Jupyter Notebook
 
# Project Overview 
  
As the pandemic resides and schools return to some level of normalcy, academic performance data, specifically data on environmental factors contributing to a student’s academic test scores, will be crucial for evaluating how to get students back on track academically.

The questions we hope to answer are:
1. Based on environmental factors such as school setting, school type, teaching method, classroom size, and socio-economic status(indicated by lunch status), can we predict whether a student will have high or low growth in their test scores (pre-test compared to post-test scores)?
2. Which of the factors assess are the most important in determining a student’s growth?

The dataset used for this project was pulled from Kaggle and linked ![here](https://www.kaggle.com/datasets/kwadwoofosu/predict-test-scores-of-students).

### Initial Data Exploration & Analysis
Very little cleaning was needed for our dataset.
Descriptive statistics were generated to understand makeup of dataset. This was completed for the whole dataset and for each school setting (urban, suburban, and rural).
To measure growth in test scores, we calculated % change in score from pre- to post-test. Then used that data to determine if a student experienced high or low growth.
Based on the mean for % change in test scores (about 18.5), we decided to go with 18.5 points as our cut-off score for determining our high and low growth categories.

# Machine Learning Model
The model we decided to use for our machine learning was a random forest classifier. We chose this model because the ensemble features of this model allowed us to find the importance of each feature in our model. This was important since we wanted to know the ranking and importance of each feature on predicting a student’s growth in their test scores.

The limitations of our a random forest model include:
* Small data set
* Training time and resource allocation (in the event of a large dataset)

The benefits of a random forest model include:
* Ability to rank the importance of features

### Preliminary Data Preprocessing
Our dataset was pretty clean already and we did not have to do much data cleanup in our preprocessing.
As we were interested in predicting the impact of environmental factors on a student’s growth in test scores (from pre- to post-test), we calculated the percent change for each student.
From there we defined the categories of whether a student fell into the low or high growth category.
Lastly, we performed pd.get_dummies to convert all of our categorical features and columns into numerical encoders.

### Preliminary Feature Engineering and Feature Selection
We did not include pre-test and post-test scores as a feature as those two columns were more of benchmarks and results. Information from those two columns did not tell us anything about a student’s growth from their pre-to post-test score but were rather just outcomes and benchmarks.
The other data in our dataset were indicative of what we consider to be environmental factors (classroom size, school setting,
<INCLUDE decision making process

Minimal preliminary data preprocessing was needed
Creation of Low and High Growth groups for Y variable
Convert categorical features into numerical encoders
X = school setting, school type, teaching method, number of students, gender, and lunch
Y = Low or High Growth
Balanced split between Low Growth and High Growth groups

### Splitting Data into Training and Testing Sets
The count balance between Low Growth and High Growth was pretty evenly split (1128 feel into Low Growth category and 1005 fell into High Growth category). 
<ADD in info on use of Standard scaler?

# Database Integration
We used Postgres SQL as our database and built a connection string to pull our dataset from Postgres. The two tables we created were comprised of student information and school information. Both tables were merged into a combined table.

![](Segment%202/ERD1.png)
![](Segment%202/ERD2.png)

# Dashboard
Dashboard will be developed on Tableau and displayed as a webframe on a Heroku app.
The innteractive elements of our dashboard will include user selections for toggling on or off the different features of interest in our dataset:
* School setting
* Lunch status
* School type
* Teaching method

<INSERT screenshots of preliminary visuals
