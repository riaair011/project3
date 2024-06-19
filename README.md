# Wine Analysis
---

### WorkFlow
<img width="1339" alt="diagram" src="https://github.com/riaair011/project3/assets/156638175/da8cf52c-35d0-4993-9c3d-be0a35b066e0">



---
### Background



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


## Contributors
-[Avinash K]([Link to GitHub](https://github.com/AVI-1213))
-[Rob]([link])
-[Ria](link)
-[Ricardo](link)
