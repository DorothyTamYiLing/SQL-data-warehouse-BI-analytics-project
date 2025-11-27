--check for NULLs or duplicates in Primary Key (expectation: no result)
SELECT
cst_id,
id_count
FROM
(SELECT
cst_id,      --group the data by the primary key
COUNT(*) id_count
FROM
bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL   --also detects when there is only one NULL cst_id
)t
ORDER BY id_count DESC

--check for unwanted spaces (expectation: no results)
SELECT cst_key
FROM bronze.crm_cust_info
WHERE cst_key != TRIM(cst_key)    --detect cases when removing unwanted space changes the value, means there is unwanted spaces

--Data Standardization and consistency
SELECT DISTINCT cst_marital_status    --find the unique value in the column
FROM bronze.crm_cust_info

--check for NULL or negative values in 'cost' columns (expectation: no results)
SELECT prd_cost
FROM bronze.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

--check for invalid date orders, end date must not be earlier than start date
SELECT *
FROM bronze.crm_prd_info
WHERE prd_end_dt < prd_start_dt

--checking everything in one query
SELECT DISTINCT
sls_sales,
sls_quantity,
sls_price,
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price    --detect all the bad cases
OR sls_sales IS NULL OR sls_quantity IS NULL OR sls_price IS NULL
OR sls_sales <= 0 OR sls_quantity <= 0 OR sls_price <= 0
ORDER BY sls_sales,sls_quantity, sls_price


--When checking if it is appropriate to join two columns from different tables,
--check how well the values in the two columns are matching
--NOT IN to check the unmatched rows (e.g. products that have no order), IN to check the matched rows
SELECT
...
FROM bronze.crm_prd_info    --table 1
WHERE SUBSTRING(prd_key,7,LEN(prd_key)) NOT IN (      --or IN
SELECT sls_prd_key FROM bronze.crm_sales_details)   --table 2
