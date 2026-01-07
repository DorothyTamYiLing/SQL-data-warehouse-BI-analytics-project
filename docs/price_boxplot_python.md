First make sure all the python packages required are installed in terminal.
'''
pip install matplotlib
pip install seaborn
pip install pandas
'''
Then, go to FIle> Option and setting > Python scripting > set python directory as 'C:\Users\User\AppData\Local\Microsoft\WindowsApps' (Nikolas's Dell laptop)

Steps:
1. Create a new column 'MonthYear_Label' based on existing column order_date, but in different date format (e.g. Febrary 2011)
Report View > Modelling > New column > enter in the box on top
DAX code: 
MonthYear_Label = 
FORMAT(gold fact_sales[order_date], "MMMM-yy")

# Then, set the MonthYear_Label column as text data type

# Then create a new column for sorting the text data type new date column
Report View > Modelling > New column > enter in the box on top
DAX code:
MonthYear_Sort = 
YEAR(gold fact_sales[order_date]) * 100 +
MONTH(gold fact_sales[order_date])

# Then sort the 'MonthYear_Label '  column by this MonthYear_Sort column (Right click column to be sorted > Column tool > sort column by (pick the column used for sorting)


Drag and Drop the following fields into plot area
X-axis column: MonthYear_Label
Y-axis column: price
column used to sort MonthYear_Label : MonthYear_Sort
