CREATE OR ALTER VIEW gold.vw_dim_showroom
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/dim_showroom',
    FORMAT = 'DELTA'
) AS result;
