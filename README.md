# Wine Analysis
---
### Overview

For our project we selected a large database that focused on wines from around the world. The dataset includes over 130,000 entries detailing various aspects of wines, such as the title, category, region, country, score, and price. We wanted to take a look at the impact that climate played on the price and perceived quality of these wines, so we retrieved climate data from multiple API's that helped us analyze this relationship. The project aimed to extract, transform, and load this data into a structured SQL database, perform detailed analyses, and generate insightful visualizations using tools like pandas, geopandas, and SQLite.

### Objectives
1.	Data Extraction: Collecting wine data (region, quality, price, variety) and weather data (temperature, precipitation, other climate factors) in the forms of databases and API’s
2.	Data Cleaning: Ensure that the datasets are free of null values, consistent across rows and free of errors.
3.	Data Transformation: Structuring and converting the data so that it’s consistent and suitable for analysis later on.
4.	Merging Data sets: Combining our cleaned dataset with regional climate information pulled from our API.
5.	Data Loading: Load the cleaned data sets onto a database for storage.
6.	Data Analysis: Perform statistical analysis to identify correlations and trends between climate variables and wine quality.
7.	Present our findings: Using data visualizations, present our findings and explain our workflow process and analysis.

## Instructions
Git clone the repository. Install necessary dependencies listed in each Jupyter notebook. 

### WorkFlow
<img width="1339" alt="diagram" src="https://github.com/riaair011/project3/blob/main/Screenshot%202024-06-24%20at%203.40.51%E2%80%AFPM.png">



---
### Background

## Data Extraction
In this stage of our project we extracted our original CSV file and created a dataframe. We then used a for loop to create a list of regions and placed them in a dataframe that we would then feed into our API. We first used OpenWeatherMap API to retrieve latitude and longitude coordinates for each of our regions. We  then added those latitude and longitude values to our dataframe, and used MeteoStat API to find average temperature and precipitation statistics for each listed lat/lng coordinate. These dataframes were then saved as CSV files for futher processing.

## Data Transformation
We found that our initial dataframe had a number of special characters, so we replaced all special characters with empty string using regex matching. We then removed all null values from our data frame. We also created unique ID's for each region and wine title entry, that would be necessary for SQL storage. We also converted data types to match our SQL ERD. Lastly we reordered each data frame to match our SQL ERD. 


## Data Modeling
#### Inspect the CSV files: 
At this stage it is about gaining insight of all the CSV files, respective columns, Rows, unique values within a column and developing Conceptual & Logical finding and probable relationship between these files.

#### Sketch an Entity Relationship Diagram of the tables: <br> 
After inspection and developing our findings, We have created ERD sketch using dbdiagram.io. 
and the model can be seen as under: -

---
<img width="1370" alt="erd_diagram" src="https://github.com/riaair011/project3/blob/main/sql/erd_wine.png">

## Data Engineering ##

Using our ERD, we then created all three tables directly in PostgreSQL by export tools available within dbdiagram.io application and performed the following:
   - Properly specified the data types, primary keys, foreign keys, and other constraints.
   - Verified the uniqueness of primary keys and created composite keys where necessary.
   - Created the tables in the correct order to handle foreign keys.
<br>
- <img width="1370" alt="erd_code" src="https://github.com/riaair011/project3/blob/main/sql/erd_code.png">


## Tools Used
- Python
- Pandas
- Jupyter Notebook
- PostgreSql
- API

## References 
•	Wine Review dataset from Kaggle: https://www.kaggle.com/datasets/zynicide/wine-reviews

•	Open WeatherMap API: https://openweathermap.org/api

•	MeteoStat Python Library: https://openweathermap.org/api](https://dev.meteostat.net/python/





## Contributors
-[Avinash K]([Link to GitHub](https://github.com/AVI-1213))
-[Rob](https://github.com/robmolenda)
-[Ria](https://github.com/riaair011)
-[Ricardo](https://github.com/RV922)


## Instructions 

Data Visualization Track Requirements (75 points)

Data and Delivery (20 points)

   The dataset contains at least 100 unique records. (5 points)

   A database is used to house the data (SQL, MongoDB, SQLite, etc.). (5 points)

   The GitHub repo has a README.md that includes the following: (10 points)

      An overview of the project and its purpose

      Instructions on how to use and interact with the project

      At least one paragraph summarizing efforts for ethical considerations made in the project

      References for the data source(s)

      References for any code used that is not your own

Visualizations (25 points)

   A minimum of three unique views present the data. (10 points)

   The visualizations are presented in a clear, digestible manner. (5 points)

   The data story is easy to interpret for users of all levels. (10 points)

Usability (30 points)

   The script, notebook, or webpage created to showcase data visualizations runs without error. (10 points)

   A Python or JavaScript library not shown in class is used in the project. (10 points)

   The project includes some level of user-driven interaction, conforming to one of the following designs: (10 points)

      HTML menus, dropdowns, and/or textboxes to display JavaScript-powered visualizations

      Flask backend with interactive API routes that serve back Python or JavaScript created plots

      Visualizations created from user-selected filtered data

Data Engineering Track Requirements (75 points)

Database Design (40 points)

   The project uses ETL workflows to ingest data into the database. (10 points)

   The original dataset(s) are transformed prior to storing it in the database. (5 points)

   A database is used to house the data (SQL, MongoDB, SQLite, etc.). (5 points)

   The database has at least two tables (SQL) or collections (NoSQL). (5 points)

   The project documents the choice of the database used and why. (5 points)

   The project includes documentation of the ETL workflow with diagrams or ERD. (10 points)

Data and Delivery (35 points)

   The database contains at least 100 unique records. (5 points)

   The project uses one additional library not covered in class related to data engineering. (10 points)

   The project includes a method for reading data from the database and displaying it for future use, such as: (10 points)

      Pandas DataFrame

      Flask API with JSON output

   The GitHub repo has a README.md that includes the following: (10 points)

      An overview of the project and its purpose

      Instructions on how to use and interact with the project

      At least one paragraph summarizing efforts for ethical considerations made in the project

      References for the data source(s)

      References for any code used that is not your own

Both Track Requirements

Group Presentation (25 points)

   All group members speak during the presentation. (5 points)

   The content is relevant to the project. (5 points)

   The presentation maintains audience interest. (5 points)

   Content, transitions, and conclusions flow smoothly within any time restrictions. (10 points)
   
