# sql-data-warehouse-BI-analytic-project
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generate actionable insights. Based on Udemy course 'The Only SQL Course with 200+ Visual Animations: learn Fast, Practice Hard & Build Real-World Projects' by Baraa.
## Project Components
### Component 1: Building the Data Warehouse (Data Engineering)
#### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources**: Import data from two source systems (Enterprise Resource Planning(ERP) and Customer Relationship Management (CRM)) provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and anakytical teams.

## Data Architecture
<img width="6235" height="3216" alt="data_architecture" src="https://github.com/user-attachments/assets/830ed2e5-407a-49a7-a47d-5848623275e5" />

<img width="4923" height="2733" alt="data_integration" src="https://github.com/user-attachments/assets/6cfe2f3a-e470-4efe-ac8f-fa80fb2d7fc6" />

### Component 2: BI Analytics & Reporting (Data Analytics)

#### Objective
Develop SQL-based analytics to deliver detailed insights into customer behaviour, product performance and sales trends. These insights empower stakeholders with key business metrics, enabling strategic decision-making.

Analytics include:
Exploratory Data Analysis (EDA): database exploration, dimension exploration, date exploration, measures exploration, magnitude and ranking exploration
Advance analytics: Change-over-time, cumulative analysis, performance analysis, part-to-whole analysis, data segmentation, report generation

## Customer Report
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

## Product Report
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

## Requirements
- SQL Server Express : lightweight server for hosting SQL databases
- SQL Server Management Studio (SSMS) : DUI for managing and interacting with databases
  
---
## Liscense
This project is liscensed under the [MIT Liscense](LICENSE). You are free to use, modify, and share this project with proper attribution.
