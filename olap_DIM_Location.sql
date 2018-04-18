CREATE TABLE IF NOT EXISTS DIM_Location AS
  SELECT c.CustomerId AS "dim_location_id", 
         c.city As city,c.state as state, c.country as country,c.postalcode as postalcode
  FROM Customer c;
  

