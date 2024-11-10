# NY-CITI-BIKES-ANALYSIS-REPORT

## PROJECT DESCRIPTION
This project analyzes NY Citi Bike rental data to gain insights into customer behaviors, preferences, and usage patterns. By leveraging SQL, the project aims to answer key questions regarding popular pick-up locations, usage trends across age groups, rental frequency among different user categories, and the relationship between age and trip duration. Specifically, the analysis will focus on:
- Identifying the most popular pick-up locations across New York City.
- Examining variations in average trip duration across distinct age groups.
- Determining which age group rents bikes most frequently.
- Analyzing bike rental patterns across user types (one-time users vs. long-term subscribers) on each day of the week.
- Investigating if and how user age influences the average duration of bike trips.

## DESIGN
This analysis of NY Citi Bike rental data will follow a structured approach, involving data cleaning, SQL-based analysis, and Power BI visualizations.
#### Data Collection and Cleaning with Excel
Data was initially cleaned in Excel to ensure accuracy and uniformity. Steps included removing duplicate entries, addressing missing values, standardizing formats for consistency, and removing outliers to avoid skewed results.
This prepared dataset ensures robust, reliable insights in the subsequent analysis and visualization phases. [Download Dataset](https://docs.google.com/spreadsheets/d/1zUn6JyFMLpNV41VofrZN1DIGajTdjyAwtmuibI0w4R8/edit?gid=249951387#gid=249951387)

#### Data Analysis with SQL
SQL queries were used to address the project’s main questions, such as identifying popular pick-up locations, evaluating trip durations by age group, and examining user behavior based on age and subscription type.

#### Visualization and Reporting with Power BI
Results were visualized in Power BI, providing clear and interactive visuals.
The dashboard featured insights on pick-up hotspots, age-based rental trends, and weekly patterns among different user groups. Power BI's interactive features will allow stakeholders to explore these findings in-depth, aiding in decision-making.


## FINDINGS
#### A. Top 5 Pick-Up Locations
To identify the most popular pick-up locations across New York City, we analyzed rental frequency by station. The table below displays the top five pick-up locations, ranked by the total number of rentals. This insight helps us understand where demand is highest, which may guide future station placement and marketing efforts.

<img width="205" alt="Screenshot 2024-11-08 at 19 32 24" src="https://github.com/user-attachments/assets/4b161570-089d-47c4-ae7c-8a5222b32008">

#### B. Average Trip Duration by Age Group
We explored the average trip duration across different age groups to uncover any notable patterns. The table below shows that trip duration varies across age demographics, with older age groups tending to take longer rides. This information can help tailor service improvements to meet the needs of various age segments.

<img width="229" alt="Screenshot 2024-11-08 at 19 33 13" src="https://github.com/user-attachments/assets/eecd76e8-b34f-46da-99c5-606367a4ecf2">

#### C. Rental Frequency by Age Group
The following table outlines the rental frequency by age group, highlighting which demographics use the service most often. As shown, middle-aged users, especially those in the 35-44 range, are the most frequent renters, which could inform targeted engagement strategies.

<img width="201" alt="Screenshot 2024-11-08 at 19 34 07" src="https://github.com/user-attachments/assets/325d9bef-fc8d-477f-b98a-683d25759764">

#### D. User Type and Weekly Rental Patterns
To understand rental behavior across different days of the week, we analyzed usage patterns for one-time users and long-term subscribers. The table below shows the total rentals by each user type on each day of the week. Notably, long-term subscribers rent more frequently on weekdays. This insight can inform promotions and operational strategies aimed at each user group.

<img width="336" alt="Screenshot 2024-11-08 at 19 44 32" src="https://github.com/user-attachments/assets/2d708caa-63bb-41f9-a55c-7a58e27337b4">

## ANALYSIS
**1. Identifying Popular Pick-Up Locations**
Used a `GROUP BY` query on the pickup_location column, aggregating by `COUNT` to find total rentals for each location. Then, sorted the results in descending order to identify the top locations.

<img width="379" alt="Screenshot 2024-11-10 151751" src="https://github.com/user-attachments/assets/760ab7cf-de9f-4406-b6d1-d9c69583c157">
