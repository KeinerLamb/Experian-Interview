SELECT 
    *
FROM [Keiner_Experian].[dbo].[Financial];




-- The column names contain spaces; we need to replace the spaces with underscores ('_') for consistency and easier querying.

-- Query to change the names
  EXEC sp_rename 'Financial.[Sale Price]','Sale_Price', 'COLUMN';
  EXEC sp_rename 'Financial.[Gross Sales]','Gross_Sales', 'COLUMN';
  EXEC sp_rename 'Financial.[Discount Band]','Discount_Band', 'COLUMN';
  EXEC sp_rename 'Financial.[Units Sold]','Units_Sold', 'COLUMN';
  EXEC sp_rename 'Financial.[Manufacturing Price]','Manufacturing_Price', 'COLUMN';
  EXEC sp_rename 'Financial.[Month Number]','Month_Number', 'COLUMN';
  EXEC sp_rename 'Financial.[Month Name]','Month_Name', 'COLUMN';


