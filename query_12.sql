select dd.year,dd.month,round(sum(fs.unit_price*fs.Quantity),2) as Revenue  
from DIM_Date dd,Fact_Sale fs
where fs.dim_date_id = dd.dim_date_id
group by dd.year,dd.month;