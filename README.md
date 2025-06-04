# Experian-Interview
A real-world scenario where a company must assess and improve the quality of its credit data before reporting it to a credit bureau, the workflow aligns with the responsibilities of a Data Management Specialist.

Python ETL Process

Reading the CSV File  
The pandas library is imported and the 'Financials.csv' file is loaded into a DataFrame called df using pd.read_csv().

Data Types and Overview  
df.info() is used to check data types and identify missing values. df.columns displays the column names

Cleaning Column Names  
Whitespace in column names is removed using df.columns.str.strip().

Exploring Categorical Columns  
Unique values in columns like 'Segment', 'Country', etc. are displayed using df[col].unique() and all is correct, no need to transform the text.

Date Column Conversion  
The 'Date' column is converted to datetime format with pd.to_datetime(). Errors are coerced to NaN using
errors='coerce'.

Cleaning Numeric Columns  
A list of value columns is defined that should contain numeric data. Symbols like '$', ',' and '-' are removed using
replace().

Converting Text to Numbers  
The specified value columns are converted to numeric type using apply(pd.to_numeric, errors='coerce').

Filtering Rows with Null Values  
A subset of the DataFrame with null values in the 'Profit' column is shown using df[df['Profit'].isna()].

Detecting and Handling Missing Values  
The percentage of missing values is calculated with df.isna().mean() * 100. Missing values in 'Profit' and 'Discounts' are
filled with 0 using fillna().


Data ready to be export to SQL Server

SQL Database Creation
A structured SQL database was developed as the foundational layer for data processing and integration. This step ensured data consistency, scalability, and efficient querying.

Alteryx Workflow
An Alteryx workflow was developed to automate data extraction, transformation, and loading 


Power BI Dashboard Documentation – Global Financial Overview for Experian
🧾 General Description
This Power BI dashboard was developed to provide a comprehensive financial overview of Experian’s product sales performance, specifically within the automotive sector. It analyzes various types of vehicles across multiple global regions, enabling the identification of trends in Sales and COGS (Cost of Goods Sold), as well as evaluating investments in both.

🎯 Dashboard Objectives
Analyze historical and current trends in sales and COGS.

Compare investment allocation between sales and COGS by region and product type.

Provide an executive-level overview to support strategic decision-making using key financial indicators.

Identify regions or product segments showing significant variances or unusual behavior.

