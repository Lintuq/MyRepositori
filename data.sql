CREATE EXTENSION file_fdw;

CREATE SERVER MyServData FOREIGN DATA WRAPPER file_fdw;

CREATE FOREIGN TABLE ILikeMyData (x integer, y integer)
       SERVER MyServDATA
       OPTIONS (filename '/home/user/data.csv',format 'csv');

SELECT * FROM ILikeMyData;
