# The following python code to create a dataframe and remove duplicated rows is always executed and acts as a preamble for your script: 

# dataset = pandas.DataFrame(Year, Quarter, Month, Day, MonthYear_Sort, price) #instead of running this line, better to drag and drop the necessary columns in the box in the visualisation pane (including the columns required for sorting)

# dataset = dataset.drop_duplicates() #run this line to drop duplicated row if necessary

# Paste or type the script code in the python code box:

#import libraries, make sure they are installed in the terminal before
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
 

