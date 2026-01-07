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
Figure 1: Illustration of how data is processed start-to-end

### Data Integration (gold layer)
<img width="1725" height="1034" alt="data_integration_1" src="https://github.com/user-attachments/assets/5eea69ba-0753-4ecc-ba0c-0f241d720c5a" />
Figure 2: Illustration of how the six cleaned tables are connected based on shared columns, as well as how they are integrated in the gold layer to create the final two customer and product dimensions and final sale fact table

<img width="1095" height="521" alt="data_flow_1" src="https://github.com/user-attachments/assets/48569189-16db-415a-9261-239c8c757fb7" />
Figure 3: Data flow diagram (showing how data in the original sources end up in the final dimensions and table)

<img width="6033" height="2249" alt="data_model" src="https://github.com/user-attachments/assets/10d3f627-57ea-48e6-8560-4ab7213be548" />
Figure 4: Illustration of how the final two customer and product dimensions and final sale fact table are connected (PK=primery key; FK=foreign key)

## Component 2: BI Analytics & Reporting (Data Analytics)

### Objective
Develop and visualise SQL-based analytics to deliver detailed insights into customer behaviour, product performance and sales trends. These insights empower stakeholders with key business metrics, enabling strategic decision-making.

__Exploratory Data Analyses (EDA):__

Database exploration: explores the structure of the database, including the list of tables and their schemas and columns, and metadata for specific tables. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/01_database_exploration.sql)

Dimension exploration: explores the structure of dimension tables. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/02_dimensions_exploration.sql)

Date exploration: determines the temporal boundaries of key data points and to understand the range of historical data. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/03_date_range_exploration.sql)

Measures exploration: calculates aggregated metrics (e.g., totals, averages) for quick insights. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/04_measures_exploration.sql) 

Magnitude exploration: quantifies data and group results by specific dimensions and for understanding data distribution across categories. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/05_magnitude_analysis.sql)

Ranking exploration: ranks items (e.g., products, customers) based on performance or other metrics and to identify top performers or laggards. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/06_ranking_analysis.sql)


__Advance analytics:__

Change-over-time: to track trends, growth, and changes in key metrics over time. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/07_change_over_time_analysis.sql)

Cumulative analysis: to calculate running totals or moving averages for key metrics. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/08_cumulative_analysis.sql)

Performance analysis (Year-Over-Year, Month-Over-Month): to measure the performance of products, customers, or regions over time. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/09_performance_analysis.sql)

Part-to-whole analysis: to compare performance or metrics across dimensions or time periods, useful for A/B testing or regional comparisons. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/11_part_to_whole_analysis.sql)

Data segmentation: to group data into meaningful categories for targeted insights. [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/10_data_segmentation.sql)

Report generation:

_1. Customer Report_ [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/12_report_customers.sql)

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

_2. Product Report [See SQL script](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/scripts/BI_analytic_scripts/13_report_products.sql)

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

Using filtering function in PowerBI, below visualisations are based on data ranges from 2011 to 2013 (i.e. years with complete 12 months records).

<img width="1408" height="704" alt="Screenshot 2026-01-03 205652" src="https://github.com/user-attachments/assets/6ab6aa7c-ee75-441c-8669-bf3d624f2f6b" />
Figure 5 (screenshot): Change of sum of quantity sold, count of distinct customer and sum of sales amount (secondary y-axis) over time, sliced by product category. These metrics had increased dramatically from the beginning of 2013 onwards. Using product category slicing, sales categories related to Accessories and Clothing only became significant from the beginning of 2013 onwards. Data from gold.fact_sales_productmerge (i.e. gold.fact_sales table merged with product category information from gold.dim_product in PowerBI)

<img width="990" height="607" alt="Screenshot 2026-01-05 133613" src="https://github.com/user-attachments/assets/caa91284-ea6f-4b88-86b4-7da53661fe8a" />
Figure 6 (screenshot): Count and percentage of orders by product category. Based on the information from the Date slicer, the orders of Accessories and Clothing only started at the end of 2012. Since then, the orders of Accessories product category increased significantly until its cumulative order number surpassed that of Bikes in April 2013. At the same time, Accessories has also become the most popular product category in the year of 2013. Data from gold.fact_sales_productmerge (i.e. gold.fact_sales table merged with product category information from gold.dim_product in PowerBI)

<img width="999" height="606" alt="Screenshot 2026-01-05 134559" src="https://github.com/user-attachments/assets/91dd5758-9515-499d-ba59-286ed14f4f72" />
Figure 7 (screenshot): Count of customer by age group. Based on the slicer, the proportions of customers of different age groups remains relatively constant across different customer segmentation slicers, suggesting the lack of association between age group and customer segmentation. Data from gold.Customers_Report.

<img width="1045" height="624" alt="Screenshot 2026-01-05 152802" src="https://github.com/user-attachments/assets/4afefe82-472a-4734-bc56-aa865f7e096b" />
Figure 8 (screenshot): Monthly moving average of price. The downward trend suggests the sales is shifting towards lower-priced products over the time period considered.

<img width="3299" height="1585" alt="Screenshot 2026-01-03 122628" src="https://github.com/user-attachments/assets/d26cacd9-b222-44a7-bd38-b24072d976a1" />
Figure 9 (screenshot): Boxplot of monthly moving average of price (See also Figure 8) 

This boxplot was produced using python script in PowerBI Desktop. See [here](https://github.com/DorothyTamYiLing/SQL-data-warehouse-BI-analytics-project/blob/main/docs/price_boxplot_python.md) for instructions.

## Requirements
- SQL Server Express : lightweight server for hosting SQL databases
- SQL Server Management Studio (SSMS) : DUI for managing and interacting with databases
- PowerBI Desktop, Version: 2.147.1088.0 64-bit (September 2025)
- Python 3.13.9
  
---
## Liscense
This project is liscensed under the [MIT Liscense](LICENSE). You are free to use, modify, and share this project with proper attribution.
