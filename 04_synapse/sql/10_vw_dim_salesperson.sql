CREATE OR ALTER VIEW gold.vw_dim_salesperson
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/dim_salesperson',
    FORMAT = 'DELTA'
) AS result;