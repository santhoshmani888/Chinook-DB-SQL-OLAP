select strftime("%Y-%m", i.InvoiceDate) as 'Month' ,sum(iv.UnitPrice*iv.Quantity) as Total_revenue
from Invoice i,InvoiceLine iv
where i.InvoiceId=iv.InvoiceId
group by strftime("%Y-%m", i.InvoiceDate)
order by Total_revenue desc
limit 1;

 