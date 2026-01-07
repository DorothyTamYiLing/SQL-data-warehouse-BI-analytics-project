
Instructions below are for plotting the boxplot in Figure 9 


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

6. Paste the following python codes in the code box:
```
# The following code to create a dataframe and remove duplicated rows is always executed and acts as a preamble for your script: 

# dataset = pandas.DataFrame(MonthYear_Label, MonthYear_Sort, price)
# dataset = dataset.drop_duplicates()

# Paste or type your script code here:

import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

# Ensure MonthYear_Label is ordered chronologically
dataset['MonthYear_Label'] = pd.Categorical(
    dataset['MonthYear_Label'],
    categories=dataset.sort_values('MonthYear_Sort')['MonthYear_Label'].unique(),
    ordered=True
)

# Set figure size
plt.figure(figsize=(12,6))

# Create the boxplot
sns.boxplot(x='MonthYear_Label', y='price', data=dataset, color='lightblue')

# Rotate x-axis labels for readability
plt.xticks(rotation=45, ha='right')

# Add axis labels and title
plt.xlabel("Month-Year")
plt.ylabel("Sale Price")
plt.title("Boxplot of Individual Sale Prices per Month-Year")

# Tight layout
plt.tight_layout()
plt.show()

6. Sort the 'MonthYear_Label' column by 'MonthYear_Sort' column (Right click column to be sorted > Column tool > sort column by (pick the column used for sorting)

7. Click the 'Python' icon in visualisation field, drag and drop the following fields into boxplot area
MonthYear_Label (x-axis)
price (y-axis)
MonthYear_Sort (column used to sort 'MonthYear_Label')
```
