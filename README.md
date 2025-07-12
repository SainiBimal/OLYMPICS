🏅 OLYMPICS MEDAL ANALYSIS (1976–2008)

This repository presents a comprehensive data analysis and visualization of **Summer Olympic medals** from **1976 to 2008** using **Python**, **Pandas**, **Matplotlib**, and **Seaborn**.

---

## 📊 Project Overview

This project aims to analyze Olympic medal trends by year, city, gender, country, sport, discipline, and event. It uncovers which countries and athletes dominated the games, which sports yielded the most medals, and how participation evolved over time.

The analysis is based on **15,315 cleaned entries** across **11 columns**, covering **all medals awarded** in Olympic events over the selected period.

---

## 🔍 Key Analyses and Visuals

### 🗓️ Year & City-wise Medal Distribution
- Barplot showing number of medals awarded per Olympic year and host city.
- Highest medals in **Beijing 2008** (~2042 medals).

### 🥇 Top 5 Countries by Year
- Stacked barplot comparing medal count of top 5 countries per Olympic year.
- Notable: **USA**, **Soviet Union**, and **China** as consistent leaders.

### 👩‍🦰 Gender-wise Medal Distribution
- Pie chart and barplot analysis.
- **Men: ~61.3%**, **Women: ~38.7%** medal share.
- Steady increase in women’s participation post-1980s.

### 🥇 Gender vs Medal Type
- Distribution of Gold, Silver, Bronze by Gender.
- Men had more golds, but distribution among genders is fairly balanced post-2000.

### 📈 Year-wise Gender Trend
- Men consistently earned more medals, though women’s share rose significantly by 2008.

### 🌍 Country-wise Medal Count
- Top 20 countries visualized.
- **USA** leads with **1992** total medals, followed by **Soviet Union** (1021).

### 🏃‍♂️ Sport-wise Medal Analysis
- Highest medal contributors:
  - **Aquatics**, **Athletics**, **Rowing**, **Hockey**, **Gymnastics**.

### 🥋 Event-wise Top 50 Medal Events
- Events like **hockey**, **handball**, **football**, and **relay races** dominate.
  
### 🏙️ City vs Event Analysis
- Each city hosted varying numbers of events.
- E.g., **Athens** had high counts in football and handball.

### 🌐 Country vs Event
- Top 3 medal-earning events per country.
- USA: basketball, aquatics, athletics
- NED: hockey

### 🎖️ Country-wise Medal Type
- Stacked barplot with gold/silver/bronze breakdown by country.


### India Focus
- **India Medal Tally:**
  - 🥇 Gold: 16
  - 🥈 Silver: 1
  - 🥉 Bronze: 4
- Dominated in **Hockey** and **Shooting**.


### 🥇 Country vs Gold Medals
- Comparison of countries by only **gold medals**.
- **USA** again tops with 928 golds.

### 🎯 Sport-Discipline Comparison
- Detailed barplot comparing medal counts by sport and discipline.

### 👨‍🎤 Athlete Performance
- Top athletes by medal count.
- **Michael Phelps (USA)**: 16 medals
- Other top performers include **Jenny Thompson**, **Carl Lewis**, and **Nikolay Andrianov**.


### 📈 Statistical Tests & Inference
- To support the visual insights with statistical evidence, you performed formal hypothesis testing using:



### 🧪 1. One-Way ANOVA (Analysis of Variance)
- Purpose: To test if mean medal counts differ significantly across different sports.
- Result Insight: A statistically significant result suggests that some sports yield higher medal chances than others.
- Application: Useful to justify why sports like Aquatics and Athletics dominate.


### 🎯 2. Chi-Square Test (Independence)
-Purpose: To check if medal type is dependent on gender or country.
-Used For: Categorical feature relationships — e.g., whether men win more gold compared to women.
-Insight: Statistically significant Chi² value shows that gender and medal type are not independent — confirming visual pie and bar charts.



### 🧪 3. t-Test (Two Sample) 
-Purpose: Compare mean medal counts between men and women.
-Insight: Indicates whether men win significantly more medals than women or not — especially useful pre- and post-2000 where female participation grew.



### 🤖 Machine Learning Model: Predicting Medal Type
-I built a classification model to predict whether a medal is Gold, Silver, or Bronze based on:

🏅 Sport

🚻 Gender

🌍 Country

### ✅ Workflow Summary:
-Data Preparation
-Encoded categorical variables (LabelEncoder / OneHotEncoder)
-Cleaned data (dropped nulls, removed duplicates)
-Created feature matrix X and target y
-Modeling
-Model Used: DecisionTreeClassifier (or similar)
-Train-Test Split: e.g., 70:30 ratio
-Evaluation Metrics: Accuracy, Confusion Matrix, Classification Report
-Insights:
-Certain sports (like Swimming, Gymnastics) and countries (like USA, China) have higher chances of Gold.
-The model helps classify likely medal type before the outcome is known — valuable for performance forecasting.


### 📌 Summary of Insights from PDF + Stats + ML

Insight Area	Finding

🥇 Medal Distribution	USA, Soviet Union, and China dominate medal counts
👩‍🦰 Gender Gap	Women’s participation and medal count rose steeply post-1992
🏃‍♂️ Sport-wise Spread	Aquatics and Athletics produce the most medals
🔍 ANOVA	Significant difference in mean medals across sports
♀️ Chi2 Test	Medal type is dependent on gender (not independent)
🧪 t-Test	Statistically significant difference in medal counts by gender
🤖 ML Prediction	Sport, Gender, and Country are good predictors of medal type

---

### 📁 Files in this Repository

| File | Description |
|------|-------------|
| `Olympics.ipynb` | Main Jupyter notebook for analysis |
| `Olympics.pdf` | Exported visuals and results |
| `Olympics.csv` | Raw dataset of Olympics |
| `README.md` | This summary file |

---

### 🚀 Technologies Used

- **Python (Pandas, Matplotlib, Seaborn)** – For data analysis & visualization
- **Google Colab / Jupyter Notebook** – Coding and exploration platform
- **CSV Dataset** – Summer Olympic medals (1976–2008)

---

### 📈 Metrics Tracked

- Medal distribution by:
  - Year & City
  - Country
  - Sport / Discipline / Event
  - Gender & Medal type
  - Individual Athlete
- Top 5 countries annually
- India’s medal trajectory
- Gold medal analysis

---

### 🧠 Insights & Observations

- **USA** dominated overall and across multiple sports.
- **Men** won more medals, but **female participation** saw strong growth post-1992.
- **Aquatics & Athletics** are the most medal-rich sports.
- **Michael Phelps** emerged as the most decorated Olympian during this era.
- **India** saw a modest medal count, primarily from Hockey and Shooting.


🙌 Author
BIMAL KUMAR SAINI
Data Analyst Intern
📧 bimalsaini333@gmail.com
🔗 [LinkedIn][https://www.linkedin.com/in/bimalsaini333/] | [GitHub][https://github.com/SainiBimal]
