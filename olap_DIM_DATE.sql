CREATE TABLE DIM_Date AS
  SELECT i.InvoiceId AS "dim_date_id", 
         i.InvoiceDate As date_value,strftime('%d',i.InvoiceDate) as day, strftime('%m',i.InvoiceDate) as month,strftime('%Y',i.InvoiceDate) as Year
  FROM invoice i;
  

