CREATE OR ALTER VIEW gold.vw_dim_customer
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/dim_customer',
    FORMAT = 'DELTA'
) AS result;