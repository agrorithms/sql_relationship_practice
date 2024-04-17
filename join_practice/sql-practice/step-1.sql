-- Step 1
-- JOIN the tables, matching FOREIGN KEYs to the corresponding PRIMARY KEY.
-- Your code here

SELECT bands.name, albums.title  FROM bands JOIN albums on bands.id=albums.band_id;
