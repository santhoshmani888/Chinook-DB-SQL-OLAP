# Chinook-DB-SQL-OLAP

We will use the Chinook data model, which represents a digital media store, including tables for artists,
albums, media tracks, invoices and customers. Download this file: https://github.com/lerocha/
chinook-database/blob/master/ChinookDatabase/DataSources/Chinook_Sqlite.sqlite . To view a
graphical representation of this database, it’s tables, columns and relationships, go to
http://schemaspy.org/sample/relationships.html . (Click on the ‘Large’ tab to see the full table view.)
To open this database, at the command prompt run: sqlite3 Chinook_Sqlite.sqlite

Query Question :
1 List the albums by the artists whose name start with the letter
‘U’ in alphabetical order (first by Artist, then by Title).
Artist|Title

2 Which album contains the longest track? AlbumName|TrackName|M
illiseconds
3 Which employee has supported the most customers? EmployeeId|FirstName|Last
Name|Title|NoOfCustomer
sSupported

4 List the top 10 albums that have the most number of tracks.
Who are they by?
ArtistName|AlbumTitle|No
OfTracks

5 List the artists that do not have any albums. ArtistId|ArtistName

6 Which employee has the greatest number of immediate
subordinates?
EmployeeId|FirstName|Last
Name|Title|NoOfReports

7 Which customer spent the most amount of money? How
many tracks did they buy?
FirstName|LastName|Total
MoneySpent|NoOfTracks

8 Which month generated the highest revenue?
Hint: you have to multiply quantity and unit prices.
Month(yyyy-mm)|TotalReve
nue
9 List the top 10 artists with the most number of tracks in
playlists.
ArtistName|NoOfTracks|No
OfPlaylists

10 List the artists that have tracks in 6 or more playlists, ordered
by the number of tracks (descending)
ArtistName|NoOfTracks|No
OfPlaylists

11 BONUS Question (10 points): List all the direct and indirect
reportees of Andrew Adams, ordered by their Employee ID.
Although the sample contains a small set of records, your
query should be able to extract an arbitrary number of levels
of hierarchy. Hint: Use recursive common table expressions.
EmployeeId|FirstName|Last
Name|Title


Build a simple Star Schema that supports analysis of sales by date, location and track.
Create the following Fact and Dimension tables

12 Generate a monthly revenue report. (revenue = total sales)
Hint: you have to multiply quantity and unit prices.
Year|Month|Revenue
13 For each artist, identify annual track sales counts in each city Artist|Year|City|TotalTrack
sSold

Analysis: Slice and dice the data in the OLAP tables that you just created and report on at
least three trends that you notice in the data. Write approximately 100 words to describe each trend
that you identify. Save your file as trends.txt .
