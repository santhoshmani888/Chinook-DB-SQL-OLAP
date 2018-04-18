select dt.artist_name as Arstist,dd.Year,dl.city,count(dt.dim_track_id) as TotalTracksSold  from DIM_Track dt,DIM_Date dd,DIM_location dl,Fact_Sale fs
where fs.dim_date_id=dd.dim_date_id
and fs.dim_location_id=dl.dim_location_id
and fs.dim_track_id=dt.dim_track_id
group by dt.artist_name,dd.Year,dl.city
;