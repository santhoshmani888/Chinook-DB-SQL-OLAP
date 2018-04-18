create table Fact_Sale as 
select iv.invoicelineid As dim_sale_id,i.InvoiceId AS "dim_date_id",c.CustomerId AS "dim_location_id",t.Trackid as dim_track_id,iv.unitprice as unit_price,iv.quantity from (customer c join invoice i on c.CustomerId=i.CustomerId join invoiceline iv on iv.InvoiceId=i.InvoiceId join track t on t.TrackId=iv.TrackId );
