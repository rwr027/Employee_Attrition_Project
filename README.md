# Employee_Attrition_Project
This project focuses on analyzing employee attrition within a company. The workflow includes data cleaning using Google Sheets, data analysis with SQL, and data visualization through Looker Studio. The goal is to identify key factors contributing to employee turnover and present actionable insights to help improve retention strategies.

### Data Source

Dataset: The primary dataset used for this analysis is the "Attrition_Dataset.csv" file, containing data that leads to employee attrition. 
The dataset came from [Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset/data).

### Tools

- Google Sheets - Data Cleaning
  - [Google Sheet Dataset](https://docs.google.com/spreadsheets/d/1PWb42eC21N4yXv2W8ZncqOxdTLSdWjT5d6mCqJYb_gQ/edit?usp=sharing)
- Micorsoft SQL Server Management Studio - Data Analysis
  - [SQL Code](https://github.com/rwr027/Richard_Rose_Portfolio/blob/332870f31217c54b177e4b42e7f220219beecb4d/Attrition_Dataset%20SQL%20Code.sql)
- Looker - Creating Report
  - [Google Looker](https://lookerstudio.google.com/s/s6BT2cDWhE0)
    
### Explorartory Data Analysis (EDA)

EDA involves exploring employee attrition dataset to address key questions to understand the factors leading to employee turnover.

- What are the attrition rates based on different demographics?
  - Gender: Female employees show a higher attrition rate compared to male employees.
  - Marital Status: Single employees have the highest attrition rate, followed by divorced employees. However, married employees have the lowest attrition rate.
  - Age: Younger employees (20-29 years) tend to have a higher attrition rate compared to older employees.

- How does the length of service (tenure) correlate with employee attrition? 
  - Employees with (0-2 years): Reflects higher attrition rates, particularly in the first year
  - Employees with (3-10 years): Reflects lower, but more varied attrition rates
  - Employees with (11 - 20 years): Exhibits very low attrition rates, indicating better retention among more experienced employees
  - Employees with (23+ years): attrition rates vary significantly, often with low attrition or no attritions at all
  
- Which departments have the highest attrition rates?
  - Sales has the highest attrition rate at 20.63%.
  - Human Resources follows with an attrition rate of 19.05%.
  - Research & Development has the lowest attrition rate among the listed departments at 13.84%.

### Data Analysis

- After analyzing the information, my suggestions to improve retention are the following:
  - Enhance Onboarding: Introduce thorough onboarding practices, which helps to ensure they are well-integrated from the start.
  - Offer Competitive Compensation: Address compensation gaps noted, as high attrition is observed in departments like Sales (20.63%) and HR (19.05%), suggesting the need for competitive pay and benefits.
  - Foster a Positive Work Environment: Create a supportive work culture by improving workplace satisfaction and support.
  - Provide Career Development Opportunities: Implement robust career development and training programs to retain talent, as departments with lower attrition rates (e.g., R&D at 13.84%) might offer better advancement opportunities.

