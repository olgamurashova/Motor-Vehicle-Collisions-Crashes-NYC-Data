## Motor Vehicle Collisions-Crashes NYC Data

### Project overview

In this project, I analized Motor Vehicle Collisions-Crashes data in New York city. The source data is available [here](https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Crashes/h9gi-nx95). 

The Motor Vehicle Collisions crash dataset contains details on the crash event. The Motor Vehicle Collisions data tables contain information from all police reported motor vehicle collisions in NYC. The police report (MV104-AN) is required to be filled out for collisions where someone is injured or killed, or where there is at least $1000 worth of damage. 

To be able to manipulate the dataset, I imported CVS file into a table using PostgreSQL tool called pgAdmin 4. 
First, I created a new table named public."Motor Vehicle Collisions" with similar columns as in the original dataset. 
Then, I imported original dataset CSV file into the  table public."Motor Vehicle Collisions", using ```COPY``` statement as follows:

![importing table](https://user-images.githubusercontent.com/89424060/159693322-ef630a2f-3f7b-4cc3-87b7-9f573840e278.png)

The table got successfully imported:

![Import Success](https://user-images.githubusercontent.com/89424060/159693962-a687d7ec-21e1-4149-afc5-182edb15f33c.png)









### Technology & Tools 

+ SQL
+ PostgreSQL
