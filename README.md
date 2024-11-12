# NY-CITI-BIKES-ANALYSIS-REPORT

## Project Description
This project analyzes NY Citi Bike rental data to gain insights into customer behaviors, preferences, and usage patterns. By leveraging SQL, the project aims to answer key questions regarding popular pick-up locations, usage trends across age groups, rental frequency among different user categories, and the relationship between age and trip duration. Specifically, the analysis will focus on:
- Identifying the most popular pick-up locations across New York City.
- Examining variations in average trip duration across distinct age groups.
- Determining which age group rents bikes most frequently.
- Analyzing bike rental patterns across user types (one-time users vs. long-term subscribers) on each day of the week.
- Investigating if and how user age influences the average duration of bike trips.

## Tools and Methodology
This analysis of NY Citi Bike rental data will follow a structured approach, involving data cleaning in Microsoft Excel, SQL-based analysis, and Power BI visualizations.

#### Data Collection and Cleaning
Data was initially cleaned in Excel to ensure accuracy and uniformity. Steps included;
- removing duplicate entries
- addressing missing values
- standardizing formats for consistency, and
- removing outliers to avoid skewed results.

This prepared dataset ensures robust, reliable insights in the subsequent analysis and visualization phases. [Download Dataset](https://docs.google.com/spreadsheets/d/1zUn6JyFMLpNV41VofrZN1DIGajTdjyAwtmuibI0w4R8/edit?gid=249951387#gid=249951387)

#### Data Analysis with SQL
SQL queries were used to address the project’s main questions, such as;
- identifying popular pick-up locations
- evaluating trip durations by age group
- determining which age group rents bikes most frequently
- examining user behavior based on age and subscription type

#### Visualization and Reporting with Power BI
Results were visualized in Power BI, providing clear and interactive visuals.
The dashboard featured insights on pick-up hotspots, age-based rental trends, and weekly patterns among different user groups. Power BI's interactive features will allow stakeholders to explore these findings in-depth, aiding in decision-making.


## Findings
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

## Analysis
#### In-Depth Insights:
**1. Identifying Popular Pick-Up Locations**
Used a `GROUP BY` query on the start_station_name column, aggregating by `COUNT` to find total rentals for each location. Then, sorted the results in descending order to identify the top locations. 
`Query:`
``` SELECT distinct start_station_name, count(*) as num
FROM citi_bikes_db.citi_bikes
GROUP BY start_station_name
ORDER BY num desc
LIMIT 5;
```
The top 5 pick-up locations highlight areas of concentrated demand across New York City. Many of these stations are likely situated near high-traffic areas, such as business districts, major transit hubs, or popular tourist destinations. This insight indicates that proximity to these types of locations plays a significant role in driving rental frequency, as people are more likely to rent bikes in areas where they naturally congregate.

A bar chart in Power BI displays the  pick-up locations with their rental counts. This visual makes it easy to see which locations have the highest demand and could help with resource allocation or marketing in high-traffic areas.

<img width="379" alt="Screenshot 2024-11-10 151751" src="https://github.com/user-attachments/assets/760ab7cf-de9f-4406-b6d1-d9c69583c157">
`Figure 1: Top Pick-Up Locations by Rental Count`

**2. Average Trip Duration by Age Group**
Calculated the average trip duration by using AVG(trip_duration) and grouped results by age_group.
A line graph illustrates how the average trip duration varies across age groups. A line graph with age on the x-axis and average trip duration on the y-axis makes it easy to see any trend of decreasing or increasing trip duration.

<img width="349" alt="Screenshot 2024-11-12 at 12 39 59" src="https://github.com/user-attachments/assets/1fb3cb08-83a2-4b96-85e5-a01b4524d9ae">
`Figure 2: Average Trip Duration by Age Group`

**3. Rental Frequency by Age Group**
To find the rental frequency by age group, a GROUP BY query was used on the age_group column with a COUNT function to determine total rentals per group. This gives insight into which demographics are the most frequent renters.

## Recommendations
- This analysis supports expanding Citi Bike stations in similar high-traffic areas across the city. By applying the characteristics of these top locations—such as proximity to transit hubs and popular destinations, NY Citi Bike can strategically plan new station placements to maximize usage and improve accessibility for users.
- If certain age groups demonstrate higher rental frequency, Citi Bike could develop targeted marketing campaigns to cater to these demographics. For example, offering loyalty rewards, personalized emails, or promotions for these groups may increase user retention and engagement.
- Age groups that tend to have longer average trip durations may appreciate features like scenic route suggestions, bike models with enhanced comfort features, or partnerships with local attractions to encourage recreational riding. Providing these could help maintain and increase user satisfaction within these demographics.
- For age groups with varying trip durations, Citi Bike could consider flexible pricing models that cater to both short-distance commuters and longer-distance recreational riders. Offering packages or passes tailored to different trip duration patterns could encourage more frequent use.
- For age groups with lower rental frequencies, Citi Bike might create initiatives or community programs to increase engagement. These could include partnerships with local organizations, senior-focused fitness programs, or educational events to introduce Citi Bike as a practical and enjoyable transportation option.

### Conclusion
The analysis of average trip duration and rental frequency by age group reveals distinct usage patterns among different demographics, providing valuable insights for optimizing the Citi Bike service. Younger age groups appear to use Citi Bike more frequently, likely for shorter commutes, while older age groups, though less frequent users, tend to take longer, possibly more leisurely trips. These insights suggest that Citi Bike serves both practical commuting needs and recreational interests, highlighting the versatility of the service.

By aligning station placement, bike availability, and marketing strategies with the preferences of each age group, Citi Bike can enhance user satisfaction and increase engagement across its diverse user base. Targeted efforts, such as introducing flexible pricing models, promoting scenic routes, and tailoring marketing campaigns, will help create a more inclusive and user-focused service. These strategic adjustments can drive higher ridership, promote customer loyalty, and support Citi Bike’s continued growth as a leading urban mobility solution in New York City.


## Appendix
<img width="578" alt="Screenshot 2024-11-10 161903" src="https://github.com/user-attachments/assets/10a0cdff-37e0-4c49-b762-f8b37e3cbb36">
