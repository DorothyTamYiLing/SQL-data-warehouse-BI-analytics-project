# SQL data warehouse and BI analytics project
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generate actionable insights. Based on Udemy course 'The Only SQL Course with 200+ Visual Animations: learn Fast, Practice Hard & Build Real-World Projects' by Baraa.
## Project Components
## Component 1: Building the Data Warehouse (Data Engineering)
#### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources (bronze layer)**: Import six original tables from two source systems (three tables from Enterprise Resource Planning(ERP) and three tables from Customer Relationship Management (CRM)) provided as CSV files.
- **Data Quality (silver layer)**: Cleanse and resolve data quality issues prior to analysis.
- **Integration (gold layer)**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and anakytical teams.

### Data Architecture
<img width="6235" height="3216" alt="data_architecture" src="https://github.com/user-attachments/assets/830ed2e5-407a-49a7-a47d-5848623275e5" />

### Data Integration (gold layer)
Below illustrates how the six cleaned tables are connected based on shared columns, as well as how they are integrated in the gold layer to create the final two customer and product dimensions and final sale fact table :
<img width="1725" height="1034" alt="data_integration_1" src="https://github.com/user-attachments/assets/5eea69ba-0753-4ecc-ba0c-0f241d720c5a" />


Data flow diagram (showing how data in the original sources end up in the final dimensions and table)
<img width="1095" height="521" alt="data_flow_1" src="https://github.com/user-attachments/assets/48569189-16db-415a-9261-239c8c757fb7" />

Below illustrates how the final two customer and product dimensions and final sale fact table are connected:
<img width="6033" height="2249" alt="data_model" src="https://github.com/user-attachments/assets/10d3f627-57ea-48e6-8560-4ab7213be548" />
PK=primery key; FK=foreign key

## Component 2: BI Analytics & Reporting (Data Analytics)

### Objective
Develop and visualise SQL-based analytics to deliver detailed insights into customer behaviour, product performance and sales trends. These insights empower stakeholders with key business metrics, enabling strategic decision-making.

__Exploratory Data Analysis (EDA):__

Database exploration: explores the structure of the database, including the list of tables and their schemas and columns, and metadata for specific tables 

Dimension exploration: explores the structure of dimension tables

Date exploration: determines the temporal boundaries of key data points and to understand the range of historical data

Measures exploration: calculates aggregated metrics (e.g., totals, averages) for quick insights  

Magnitude exploration: quantifies data and group results by specific dimensions and for understanding data distribution across categories

Ranking exploration: ranks items (e.g., products, customers) based on performance or other metrics and to identify top performers or laggards


__Advance analytics:__

Change-over-time: to track trends, growth, and changes in key metrics over time

cumulative analysis, performance analysis, part-to-whole analysis, data segmentation, report generation  

_Customer Report_
Purpose:  
    - This report consolidates key customer metrics and behaviors  

Highlights:  
    1. Gathers essential fields such as names, ages, and transaction details.  
	2. Segments customers into categories (VIP, Regular, New) and age groups.  
    3. Aggregates customer-level metrics:  
	   - total orders  
	   - total sales  
	   - total quantity purchased  
	   - total products  
	   - lifespan (in months)  
    4. Calculates valuable KPIs:  
	    - recency (months since last order)  
		- average order value  
		- average monthly spend  

_Product Report_
Purpose:  
    - This report consolidates key product metrics and behaviors.  

Highlights:  
    1. Gathers essential fields such as product name, category, subcategory, and cost.  
    2. Segments products by revenue to identify High-Performers, Mid-Range, or Low-Performers.  
    3. Aggregates product-level metrics:  
       - total orders  
       - total sales  
       - total quantity sold  
       - total customers (unique)  
       - lifespan (in months)  
    4. Calculates valuable KPIs:  
       - recency (months since last sale)  
       - average order revenue (AOR)  (for each order, sale_amount/quantity)  
       - average monthly revenue  

#### Analytics visualisation

## Requirements
- SQL Server Express : lightweight server for hosting SQL databases
- SQL Server Management Studio (SSMS) : DUI for managing and interacting with databases
  
---
## Liscense
This project is liscensed under the [MIT Liscense](LICENSE). You are free to use, modify, and share this project with proper attribution.
