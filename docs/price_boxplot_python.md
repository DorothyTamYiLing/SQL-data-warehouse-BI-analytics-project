
1. First make sure all the python packages required are installed in terminal.
```
pip install matplotlib
pip install seaborn
pip install pandas
```
2. Then in PowerBI, go to File > Option and setting > Python scripting > set python directory as 'C:\Users\User\AppData\Local\Microsoft\WindowsApps' (Dell laptop)

3. In table gold fact_sales_productmerge, create a new column 'MonthYear_Label' based on existing column 'order_date', but in different date format (e.g. Febrary 2011)
Report View > Modelling > New column > enter DAX code in the box on top
DAX code:
```
MonthYear_Label = 
FORMAT(gold fact_sales[order_date], "MMMM-yy")
```
4. Set the 'MonthYear_Label' column as text data type

5. Create a new column 'MonthYear_Sort' for sorting the column 'MonthYear_Label'
Report View > Modelling > New column > enter DAX code in the box on top
DAX code:
```
MonthYear_Sort = 
YEAR(gold fact_sales[order_date]) * 100 +
MONTH(gold fact_sales[order_date])
```

6. Sort the 'MonthYear_Label' column by 'MonthYear_Sort' column (Right click column to be sorted > Column tool > sort column by (pick the column used for sorting)

7. Click the 'Python' icon in visualisation field, drag and drop the following fields into boxplot area
MonthYear_Label (x-axis)
price (y-axis)
MonthYear_Sort (column used to sort 'MonthYear_Label')
