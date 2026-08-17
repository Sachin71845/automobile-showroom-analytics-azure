CREATE OR ALTER VIEW gold.vw_dim_date
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/dim_date',
    FORMAT = 'DELTA'
) AS result;